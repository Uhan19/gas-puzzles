// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

// 353 gas above target currently
contract OptimizedArraySort {
    function sortArray(uint256[] calldata data) external pure returns (uint256[] memory) {
        uint256[] memory _data = data;
        uint256 _dataLen = _data.length;

        for (uint256 i = 0; i < _dataLen; ++i) {
            for (uint256 j = i+1; j < _dataLen; ++j) {
                uint256 data1 = _data[i];
                uint256 data2 = _data[j];
                if(data1 > data2){
                    _data[i] = data2;
                    _data[j] = data1;
                }
            }
        }
        return _data;
    }
}
