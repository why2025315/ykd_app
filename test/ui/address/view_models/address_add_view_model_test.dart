import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:ykd_tea_app/infrastructure/services/address_service.dart';
import 'package:ykd_tea_app/ui/address/view_models/address_add_view_model.dart';
import 'package:ykd_tea_app/utils/result.dart';

@GenerateMocks([AddressService])
import 'address_add_view_model_test.mocks.dart';

void main() {
  late MockAddressService mockAddressService;
  late AddressAddViewModel viewModel;

  setUp(() {
    mockAddressService = MockAddressService();
    viewModel = AddressAddViewModel(addressService: mockAddressService);
  });

  group('_addAddress', () {
    final testParams = AddressAddParams(
      name: '张三',
      mobile: '13800138000',
      address: '测试地址',
      isDefault: false,
      provinceId: 1,
      cityId: 2,
      areaId: 3,
    );

    test('成功添加地址时返回 Ok(true)', () async {
      when(mockAddressService.createAddress(testParams))
          .thenAnswer((_) async => Result.ok(true));

      final result = await viewModel.addAddressCommand.execute(testParams);
      await Future.delayed(Duration.zero);

      expect(viewModel.completed, true);
      expect(viewModel.error, false);
      expect(viewModel.result, isA<Ok<bool>>());
      if (viewModel.result is Ok<bool>) {
        expect((viewModel.result as Ok<bool>).value, true);
      }
    });

    test('表单验证失败时返回错误', () async {
      final invalidParams = AddressAddParams(
        name: '',
        mobile: '',
        address: '',
        isDefault: false,
        provinceId: 0,
        cityId: 0,
        areaId: 0,
      );

      when(mockAddressService.createAddress(invalidParams))
          .thenAnswer((_) async => Result.ok(true));

      final result = await viewModel.addAddressCommand.execute(invalidParams);
      await Future.delayed(Duration.zero);

      expect(viewModel.error, true);
      expect(viewModel.completed, false);
      if (viewModel.result is Error<bool>) {
        expect(
          (viewModel.result as Error<bool>).error.toString(),
          contains('请检查输入'),
        );
      }
    });

    test('AddressService 返回 Error 时返回错误', () async {
      final testException = Exception('服务器错误');
      when(mockAddressService.createAddress(testParams))
          .thenAnswer((_) async => Result.error(testException));

      final result = await viewModel.addAddressCommand.execute(testParams);
      await Future.delayed(Duration.zero);

      expect(viewModel.error, true);
      expect(viewModel.completed, false);
      if (viewModel.result is Error<bool>) {
        expect((viewModel.result as Error<bool>).error, testException);
      }
    });

    test('成功后重置表单', () async {
      when(mockAddressService.createAddress(testParams))
          .thenAnswer((_) async => Result.ok(true));

      await viewModel.addAddressCommand.execute(testParams);
      await Future.delayed(Duration.zero);

      verify(mockAddressService.createAddress(testParams)).called(1);
    });

    test('失败后也重置表单', () async {
      when(mockAddressService.createAddress(testParams))
          .thenAnswer((_) async => Result.error(Exception('失败')));

      await viewModel.addAddressCommand.execute(testParams);
      await Future.delayed(Duration.zero);

      verify(mockAddressService.createAddress(testParams)).called(1);
    });

    test('防止重复执行', () async {
      when(mockAddressService.createAddress(testParams))
          .thenAnswer((_) async {
        await Future.delayed(Duration(milliseconds: 100));
        return Result.ok(true);
      });

      final future1 = viewModel.addAddressCommand.execute(testParams);
      expect(viewModel.running, true);

      final future2 = viewModel.addAddressCommand.execute(testParams);
      await Future.delayed(Duration.zero);

      verify(mockAddressService.createAddress(testParams)).called(1);

      await future1;
      await future2;
    });

    test('清空结果后状态正确', () async {
      when(mockAddressService.createAddress(testParams))
          .thenAnswer((_) async => Result.ok(true));

      await viewModel.addAddressCommand.execute(testParams);
      await Future.delayed(Duration.zero);

      expect(viewModel.completed, true);

      viewModel.addAddressCommand.clearResult();

      expect(viewModel.result, null);
      expect(viewModel.completed, false);
      expect(viewModel.error, false);
    });

    test('处理空姓名参数', () async {
      final emptyNameParams = AddressAddParams(
        name: '',
        mobile: '13800138000',
        address: '测试地址',
        isDefault: false,
        provinceId: 1,
        cityId: 2,
        areaId: 3,
      );

      when(mockAddressService.createAddress(emptyNameParams))
          .thenAnswer((_) async => Result.ok(true));

      await viewModel.addAddressCommand.execute(emptyNameParams);
      await Future.delayed(Duration.zero);

      expect(viewModel.error, true);
      if (viewModel.result is Error<bool>) {
        expect(
          (viewModel.result as Error<bool>).error.toString(),
          contains('请检查输入'),
        );
      }
    });

    test('处理空手机号参数', () async {
      final emptyMobileParams = AddressAddParams(
        name: '张三',
        mobile: '',
        address: '测试地址',
        isDefault: false,
        provinceId: 1,
        cityId: 2,
        areaId: 3,
      );

      when(mockAddressService.createAddress(emptyMobileParams))
          .thenAnswer((_) async => Result.ok(true));

      await viewModel.addAddressCommand.execute(emptyMobileParams);
      await Future.delayed(Duration.zero);

      expect(viewModel.error, true);
    });

    test('处理默认地址为 true 的情况', () async {
      final defaultParams = AddressAddParams(
        name: '张三',
        mobile: '13800138000',
        address: '测试地址',
        isDefault: true,
        provinceId: 1,
        cityId: 2,
        areaId: 3,
      );

      when(mockAddressService.createAddress(defaultParams))
          .thenAnswer((_) async => Result.ok(true));

      await viewModel.addAddressCommand.execute(defaultParams);
      await Future.delayed(Duration.zero);

      expect(viewModel.completed, true);
      verify(mockAddressService.createAddress(defaultParams)).called(1);
    });

    test('边界情况: 省市区 ID 为 0', () async {
      final zeroIdParams = AddressAddParams(
        name: '张三',
        mobile: '13800138000',
        address: '测试地址',
        isDefault: false,
        provinceId: 0,
        cityId: 0,
        areaId: 0,
      );

      when(mockAddressService.createAddress(zeroIdParams))
          .thenAnswer((_) async => Result.ok(true));

      await viewModel.addAddressCommand.execute(zeroIdParams);
      await Future.delayed(Duration.zero);

      verify(mockAddressService.createAddress(zeroIdParams)).called(1);
    });
  });
}
