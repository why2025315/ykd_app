import 'package:flutter/material.dart';
import 'package:ykd_tea_app/domain/models/region/region.dart';
import 'package:ykd_tea_app/infrastructure/services/address_service.dart';
import 'package:ykd_tea_app/utils/result.dart';

class AddressResult {
  String? provinceName;
  int? provinceId;

  String? cityName;
  int? cityId;

  String? areaName;
  int? areaId;

  AddressResult({
    this.provinceName,
    this.provinceId,
    this.cityName,
    this.cityId,
    this.areaName,
    this.areaId,
  });

  void setProvince({String? provinceName, int? provinceId}) {
    this.provinceName = provinceName;
    this.provinceId = provinceId;
  }

  void setCity({String? cityName, int? cityId}) {
    this.cityName = cityName;
    this.cityId = cityId;
  }

  void setArea({String? areaName, int? areaId}) {
    this.areaName = areaName;
    this.areaId = areaId;
  }

  @override
  String toString() {
    return [
      provinceName,
      cityName,
      areaName,
    ].where((element) => element != null).join(' ');
  }
}

class AddressSelect extends StatefulWidget {
  const AddressSelect({
    super.key,
    this.initialResult,
    required this.getRegionService,
  });

  final AddressResult? initialResult;
  final Future<Result<List<Region>>> Function(int) getRegionService;

  @override
  State<AddressSelect> createState() => _AddressSelectState();
}

class _AddressSelectState extends State<AddressSelect> {
  String _curState = 'province';
  AddressResult? _result;

  Map<int, List<Region>> _regionData = {};

  List<Region> _list = [];

  @override
  void initState() {
    _result = widget.initialResult ?? AddressResult();
    _curState = 'province';
    _getRegionById(0).then((value) {
      setState(() {
        _list = value;
      });
    });
    if (_result?.provinceId != null) {
      _getRegionById(_result!.provinceId!);
    }
    if (_result?.cityId != null) {
      _getRegionById(_result!.cityId!);
    }
    super.initState();
  }

  Future<List<Region>> _getRegionById(int id) async {
    List<Region>? regions = _regionData[id];
    if (regions != null && regions.isNotEmpty) {
      return regions;
    }
    List<Region> regionsNew = await _loadRegionData(id);
    if (regionsNew.isNotEmpty) {
      setState(() {
        _regionData[id] = regionsNew;
      });
      return regionsNew;
    }
    return [];
  }

  Future<List<Region>> _loadRegionData(int id) async {
    Result<List<Region>> result = await widget.getRegionService(id);
    switch (result) {
      case Ok(value: final value):
        return value;
      case Error(error: final error):
        return [];
    }
  }

  get _resultString => [
    _result?.provinceName,
    _result?.cityName,
    _result?.areaName,
  ].where((element) => element != null).join(' ');

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (bool didPop, dynamic result) {
        if (didPop) {
          return;
        }
        if (_curState == 'province') {
          Navigator.of(context).pop(_result);
        } else if (_curState == 'city') {
          setState(() {
            _curState = 'province';
            _list = _regionData[0] ?? [];
          });
        } else if (_curState == 'area') {
          setState(() {
            _curState = 'city';
            _list = _regionData[_result?.provinceId] ?? [];
          });
        }
      },
      child: Scaffold(
        appBar: AppBar(title: Text(_resultString ?? '选择地址')),
        body: ListView.separated(
          itemBuilder: (context, index) => _itemBuilder(context, index),
          separatorBuilder: (context, index) =>
              const Divider(indent: 15.0, height: 1, color: Colors.black12),
          itemCount: _list.length,
        ),
      ),
    );
  }

  Widget _itemBuilder(BuildContext context, int index) {
    final item = _list[index];
    return ListTile(
      title: Text('${item.name}'),
      selected:
          item.id == _result?.provinceId ||
          item.id == _result?.cityId ||
          item.id == _result?.areaId,
      trailing:
          item.id == _result?.provinceId ||
              item.id == _result?.cityId ||
              item.id == _result?.areaId
          ? const Icon(Icons.check)
          : null,
      onTap: () {
        if (_curState == 'province') {
          _getRegionById(item.id!).then((value) {
            setState(() {
              _list = value;
              _curState = 'city';
              _result?.setProvince(
                provinceName: item.name,
                provinceId: item.id,
              );
            });
          });
        } else if (_curState == 'city') {
          _getRegionById(item.id!).then((value) {
            setState(() {
              _list = value;
              _curState = 'area';
            });
            _result?.setCity(cityName: item.name, cityId: item.id);
          });
        } else if (_curState == 'area') {
          setState(() {
            _result?.setArea(areaName: item.name, areaId: item.id);
          });
          Navigator.of(context).pop(_result);
        }
      },
    );
  }
}
