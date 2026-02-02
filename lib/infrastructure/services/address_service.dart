import 'package:dio/dio.dart';
import 'package:ykd_tea_app/domain/models/address/address.dart';
import 'package:ykd_tea_app/domain/models/address_detail/address_detail.dart';
import 'package:ykd_tea_app/domain/models/region/region.dart';
import 'package:ykd_tea_app/infrastructure/network/api_client.dart';
import 'package:ykd_tea_app/utils/result.dart';

class AddressAddParams {
  int? id;
  final String name;
  final String mobile;
  final String address;
  final bool isDefault;
  final int provinceId;
  final int cityId;
  final int areaId;

  AddressAddParams({
    this.id,
    required this.name,
    required this.mobile,
    required this.address,
    required this.isDefault,
    required this.provinceId,
    required this.cityId,
    required this.areaId,
  });
  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'mobile': mobile,
    'address': address,
    'isDefault': isDefault,
    'provinceId': provinceId,
    'cityId': cityId,
    'areaId': areaId,
  };
}

class AddressService {
  AddressService({required ApiClient apiClient}) : _client = apiClient;
  final ApiClient _client;

  // 查询地址详情
  Future<Result<AddressDetail>> getAddressDetail(int addressId) async {
    try {
      final response = await _client.get(
        '/wx/address/detail',
        queryParameters: {"id": addressId},
      );
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(AddressDetail.fromJson(response.data['data']));
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }

  // 新建地址
  Future<Result<int>> createAddress(AddressAddParams params) async {
    try {
      final response = await _client.post(
        '/wx/address/save',
        data: params.toJson(),
      );
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(response.data['data']);
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }

  // 更新地址
  Future<dynamic> updateAddress(Address address) async {
    return _client.post('/wx/address/save', data: address.toJson());
  }

  // 获取地址列表
  Future<Result<List<Address>>> getAddressList() async {
    try {
      final response = await _client.get('/wx/address/list');
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(
          (response.data['data'] as List)
              .map((e) => Address.fromJson(e as Map<String, dynamic>))
              .toList(),
        );
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }

  // 删除地址
  Future<dynamic> deleteAddress(int id) async {
    return _client.post('/wx/address/delete', data: {'id': id});
  }

  // 获取Region列表
  Future<Result<List<Region>>> getRegionList(int pid) async {
    try {
      final response = await _client.get(
        '/wx/region/list',
        queryParameters: {'pid': pid},
      );
      if (response.statusCode == 200) {
        if (response.data['code'] != 0) {
          return Result.error(Exception(response.data['msg']));
        }
        return Result.ok(
          (response.data['data'] as List)
              .map((e) => Region.fromJson(e as Map<String, dynamic>))
              .toList(),
        );
      } else {
        return Result.error(Exception('请求失败'));
      }
    } on DioException catch (e) {
      return Result.error(e);
    }
  }
}
