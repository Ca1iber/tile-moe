metadata = tvm.ir.load_json("""{
  \"root_index\": 340,
  \"nodes\": [
    {
      \"type\": \"ffi.String\",
      \"data\": \"tl.Layout\"
    },
    {
      \"type\": \"None\"
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 128
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 64
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        2,
        3
      ]
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 0
      }
    },
    {
      \"type\": \"ffi.String\",
      \"data\": \"_i\"
    },
    {
      \"type\": \"ir.PrimType\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\"
      }
    },
    {
      \"type\": \"tir.Var\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"name\": 6,
        \"type_annotation\": 7
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 9
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 11
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 64
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 12,
        \"b\": 13
      }
    },
    {
      \"type\": \"ffi.String\",
      \"data\": \"_j\"
    },
    {
      \"type\": \"ir.PrimType\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\"
      }
    },
    {
      \"type\": \"tir.Var\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"name\": 15,
        \"type_annotation\": 16
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 18
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 20
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 21,
        \"b\": 22
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 19,
        \"b\": 23
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 24,
        \"b\": 25
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 26,
        \"b\": 27
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 14,
        \"b\": 28
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 30
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 31,
        \"b\": 32
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 34
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 35,
        \"b\": 36
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 33,
        \"b\": 37
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 38,
        \"b\": 39
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 40,
        \"b\": 41
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 29,
        \"b\": 42
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 44
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 45,
        \"b\": 46
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 48
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 47,
        \"b\": 49
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 50,
        \"b\": 51
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 52,
        \"b\": 53
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 43,
        \"b\": 54
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 56
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 55,
        \"b\": 57
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        5,
        10,
        58
      ]
    },
    {
      \"type\": \"tl.Layout\",
      \"data\": {
        \"input_size\": 4,
        \"forward_index\": 59
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 128
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 64
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        61,
        62
      ]
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 0
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 65
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 67
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 64
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 68,
        \"b\": 69
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 71
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 73
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 74,
        \"b\": 75
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 72,
        \"b\": 76
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 77,
        \"b\": 78
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 79,
        \"b\": 80
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 70,
        \"b\": 81
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 83
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 84,
        \"b\": 85
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 87
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 88,
        \"b\": 89
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 86,
        \"b\": 90
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 91,
        \"b\": 92
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 93,
        \"b\": 94
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 82,
        \"b\": 95
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 97
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 98,
        \"b\": 99
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 101
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 100,
        \"b\": 102
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 103,
        \"b\": 104
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 105,
        \"b\": 106
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 96,
        \"b\": 107
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 109
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 108,
        \"b\": 110
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        64,
        66,
        111
      ]
    },
    {
      \"type\": \"tl.Layout\",
      \"data\": {
        \"input_size\": 63,
        \"forward_index\": 112
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 256
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 64
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        114,
        115
      ]
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 0
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 118
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 120
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 64
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 121,
        \"b\": 122
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 124
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 126
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 127,
        \"b\": 128
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 125,
        \"b\": 129
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 130,
        \"b\": 131
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 132,
        \"b\": 133
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 123,
        \"b\": 134
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 136
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 137,
        \"b\": 138
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 140
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 141,
        \"b\": 142
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 139,
        \"b\": 143
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 144,
        \"b\": 145
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 146,
        \"b\": 147
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 135,
        \"b\": 148
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 150
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 151,
        \"b\": 152
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 154
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 153,
        \"b\": 155
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 2
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 156,
        \"b\": 157
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 158,
        \"b\": 159
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 149,
        \"b\": 160
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 162
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 161,
        \"b\": 163
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        117,
        119,
        164
      ]
    },
    {
      \"type\": \"tl.Layout\",
      \"data\": {
        \"input_size\": 116,
        \"forward_index\": 165
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        60,
        113,
        166
      ]
    },
    {
      \"type\": \"ffi.String\",
      \"data\": \"tl.Fragment\"
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 128
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 64
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        169,
        170
      ]
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 172
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 173,
        \"b\": 174
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 176
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 177,
        \"b\": 178
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 179,
        \"b\": 180
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 175,
        \"b\": 181
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 183
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 182,
        \"b\": 184
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        185
      ]
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 187
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 64
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 188,
        \"b\": 189
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 191
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 192,
        \"b\": 193
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 194,
        \"b\": 195
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 190,
        \"b\": 196
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 198
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 197,
        \"b\": 199
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 1
      }
    },
    {
      \"type\": \"tl.Fragment\",
      \"data\": {
        \"input_size\": 171,
        \"forward_index\": 186,
        \"forward_thread\": 200,
        \"replicate_size\": 201
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 128
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 128
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        203,
        204
      ]
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 206
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 207,
        \"b\": 208
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 209,
        \"b\": 210
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 212
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 213,
        \"b\": 214
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 211,
        \"b\": 215
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 217
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 216,
        \"b\": 218
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        219
      ]
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 221
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 64
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 222,
        \"b\": 223
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 225
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 226,
        \"b\": 227
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 228,
        \"b\": 229
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 224,
        \"b\": 230
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 232
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 231,
        \"b\": 233
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 1
      }
    },
    {
      \"type\": \"tl.Fragment\",
      \"data\": {
        \"input_size\": 205,
        \"forward_index\": 220,
        \"forward_thread\": 234,
        \"replicate_size\": 235
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 128
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 128
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        237,
        238
      ]
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 240
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 241,
        \"b\": 242
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 243,
        \"b\": 244
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 246
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 247,
        \"b\": 248
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 245,
        \"b\": 249
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 251
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 250,
        \"b\": 252
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        253
      ]
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 255
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 64
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 256,
        \"b\": 257
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 259
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 260,
        \"b\": 261
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 262,
        \"b\": 263
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 258,
        \"b\": 264
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 266
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 265,
        \"b\": 267
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 1
      }
    },
    {
      \"type\": \"tl.Fragment\",
      \"data\": {
        \"input_size\": 239,
        \"forward_index\": 254,
        \"forward_thread\": 268,
        \"replicate_size\": 269
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 128
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 64
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        271,
        272
      ]
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 274
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 275,
        \"b\": 276
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 278
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 279,
        \"b\": 280
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 281,
        \"b\": 282
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 277,
        \"b\": 283
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 285
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 284,
        \"b\": 286
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        287
      ]
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 289
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 64
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 290,
        \"b\": 291
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 293
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 8
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 294,
        \"b\": 295
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 296,
        \"b\": 297
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 292,
        \"b\": 298
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 300
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 299,
        \"b\": 301
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 1
      }
    },
    {
      \"type\": \"tl.Fragment\",
      \"data\": {
        \"input_size\": 273,
        \"forward_index\": 288,
        \"forward_thread\": 302,
        \"replicate_size\": 303
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 128
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 256
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        305,
        306
      ]
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 308
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 309,
        \"b\": 310
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 64
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 311,
        \"b\": 312
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 314
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 315,
        \"b\": 316
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 313,
        \"b\": 317
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 319
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 318,
        \"b\": 320
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        321
      ]
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 32
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 323
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 64
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 324,
        \"b\": 325
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 17,
        \"b\": 327
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 328,
        \"b\": 329
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 330,
        \"b\": 331
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 326,
        \"b\": 332
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 8,
        \"b\": 334
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 333,
        \"b\": 335
      }
    },
    {
      \"type\": \"ir.IntImm\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"value\": 1
      }
    },
    {
      \"type\": \"tl.Fragment\",
      \"data\": {
        \"input_size\": 307,
        \"forward_index\": 322,
        \"forward_thread\": 336,
        \"replicate_size\": 337
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        202,
        236,
        270,
        304,
        338
      ]
    },
    {
      \"type\": \"ffi.Map\",
      \"data\": [
        0,
        167,
        168,
        339
      ]
    }
  ],
  \"metadata\": {
    \"tvm_version\": \"0.23.dev0\"
  }
}""")
# from tvm.script import tir as T

@T.prim_func
def kernel(input_handle: T.handle, routed_expert_gate_handle: T.handle, routed_expert_up_handle: T.handle, routed_expert_down_handle: T.handle, routed_expert_weights_handle: T.handle, group_sizes_handle: T.handle, group_offsets_handle: T.handle, group_padded_offsets_handle: T.handle, group_idx_for_bx_handle: T.handle, up_logits_handle: T.handle, output_handle: T.handle):
    input = T.match_buffer(input_handle, (9088, 7168), "float16", strides=(7168, 1))
    routed_expert_gate = T.match_buffer(routed_expert_gate_handle, (64, 2048, 7168), "float16", strides=(14680064, 7168, 1))
    routed_expert_up = T.match_buffer(routed_expert_up_handle, (64, 2048, 7168), "float16", strides=(14680064, 7168, 1))
    routed_expert_down = T.match_buffer(routed_expert_down_handle, (64, 7168, 2048), "float16", strides=(14680064, 2048, 1))
    routed_expert_weights = T.match_buffer(routed_expert_weights_handle, (9088,), "float16", strides=(1,))
    group_sizes = T.match_buffer(group_sizes_handle, (64,), "int32", strides=(1,))
    group_offsets = T.match_buffer(group_offsets_handle, (64,), "int32", strides=(1,))
    group_padded_offsets = T.match_buffer(group_padded_offsets_handle, (64,), "int32", strides=(1,))
    group_idx_for_bx = T.match_buffer(group_idx_for_bx_handle, (96,), "int32", strides=(1,))
    up_logits = T.match_buffer(up_logits_handle, (9088, 2048), "float16", strides=(2048, 1))
    output = T.match_buffer(output_handle, (9088, 7168), "float16", strides=(7168, 1))
    # with T.block("root"):
    with T.launch_thread("blockIdx.x", 16) as by:
        bx = T.launch_thread("blockIdx.y", 96)
        thread_binding = T.launch_thread("threadIdx.x", 256)
        ty = T.launch_thread("threadIdx.y", 1)
        tz = T.launch_thread("threadIdx.z", 1)
        with T.block("tilelang_root"):
            T.reads(group_idx_for_bx[bx], group_sizes[group_idx_for_bx[bx]], group_padded_offsets[group_idx_for_bx[bx]], group_offsets[group_idx_for_bx[bx]], input[bx * 128 - group_padded_offsets[group_idx_for_bx[bx]] + group_offsets[group_idx_for_bx[bx]], 0:7105], routed_expert_gate[group_idx_for_bx[bx], by * 128, 0:7105], routed_expert_up[group_idx_for_bx[bx], by * 128, 0:7105])
            T.writes(up_logits[bx * 128 + group_offsets[group_idx_for_bx[bx]] - group_padded_offsets[group_idx_for_bx[bx]]:bx * 128 + group_offsets[group_idx_for_bx[bx]] - group_padded_offsets[group_idx_for_bx[bx]] + 128, by * 128:by * 128 + 128])
            input_shared = T.handle("float16", "local.fragment")
            routed_expert_gate_shared = T.handle("float16", "shared.dyn")
            routed_expert_up_shared = T.handle("float16", "shared.dyn")
            gate_logits_local = T.handle("float32", "local.fragment")
            up_logits_local = T.handle("float32", "local.fragment")
            T.block_attr({"layout_map": {input_shared: metadata["tl.Fragment"][0], routed_expert_gate_shared: metadata["tl.Layout"][0], routed_expert_up_shared: metadata["tl.Layout"][1], gate_logits_local: metadata["tl.Fragment"][1], up_logits_local: metadata["tl.Fragment"][2]}})
            input_shared_1 = T.alloc_buffer((128, 64), "float16", data=input_shared, scope="local.fragment")
            routed_expert_gate_shared_1 = T.alloc_buffer((128, 64), "float16", data=routed_expert_gate_shared, scope="shared.dyn")
            routed_expert_up_shared_1 = T.alloc_buffer((128, 64), "float16", data=routed_expert_up_shared, scope="shared.dyn")
            gate_logits_local_1 = T.alloc_buffer((128, 128), data=gate_logits_local, scope="local.fragment")
            up_logits_local_1 = T.alloc_buffer((128, 128), data=up_logits_local, scope="local.fragment")
            expert_weight_local = T.alloc_buffer((64,), "float16", scope="local")
            m_start_padded: T.int32 = bx * 128
            cur_group_idx: T.int32 = group_idx_for_bx[bx]
            T.assume(cur_group_idx >= 0)
            T.assume(cur_group_idx < 64)
            cur_group_size: T.int32 = group_sizes[cur_group_idx]
            m_start: T.int32 = m_start_padded - group_padded_offsets[cur_group_idx] + group_offsets[cur_group_idx]
            actual_rows: T.int32 = T.max(0, T.min(128, cur_group_size - (m_start_padded - group_padded_offsets[cur_group_idx])))
            T.fill(T.region(gate_logits_local_1[0, 0], 2, 128, 128), 0)
            T.fill(T.region(up_logits_local_1[0, 0], 2, 128, 128), 0)
            for k in T.serial(112, annotations={"num_stages": 1}):
                T.copy(T.region(input[m_start, k * 64], 1, 128, 64), T.region(input_shared_1[0, 0], 2, 128, 64))
                T.copy(T.region(routed_expert_gate[cur_group_idx, by * 128, k * 64], 1, 1, 128, 64), T.region(routed_expert_gate_shared_1[0, 0], 2, 128, 64))
                T.copy(T.region(routed_expert_up[cur_group_idx, by * 128, k * 64], 1, 1, 128, 64), T.region(routed_expert_up_shared_1[0, 0], 2, 128, 64))
                for ki in range(2):
                    tx: T.int32 = thread_binding % 64
                    _: T.int32 = thread_binding // 64 % 4
                    for j in range(8):
                        for local_id in T.vectorized(8):
                            row: T.int32 = tx % 16
                            col: T.int32 = tx // 16 * 8 + local_id
                            l: T.int32 = j * 16
                            r: T.int32 = ki * 32
                            expert_weight_local[j * 2 * 4 + local_id] = routed_expert_gate_shared_1[l + row, r + col]
                    for kp, i, j in T.grid(2, 2, 8):
                        T.tvm_mfma("16x16x16f16", "row", "row", "float16x4", "float16x4", "float32x4", expert_weight_local.data, (j * 2 + kp) * 4 // 4, input_shared, (ki * 2 * 2 * 4 + (i * 2 + kp) * 4) // 4, gate_logits_local, (i * 8 * 4 + j * 4) // 4)
                    tx_1: T.int32 = thread_binding % 64
                    __1: T.int32 = thread_binding // 64 % 4
                    for j in range(8):
                        for local_id in T.vectorized(8):
                            row: T.int32 = tx_1 % 16
                            col: T.int32 = tx_1 // 16 * 8 + local_id
                            l: T.int32 = j * 16
                            r: T.int32 = ki * 32
                            expert_weight_local[j * 2 * 4 + local_id] = routed_expert_up_shared_1[l + row, r + col]
                    for kp, i, j in T.grid(2, 2, 8):
                        T.tvm_mfma("16x16x16f16", "row", "row", "float16x4", "float16x4", "float32x4", expert_weight_local.data, (j * 2 + kp) * 4 // 4, input_shared, (ki * 2 * 2 * 4 + (i * 2 + kp) * 4) // 4, up_logits_local, (i * 8 * 4 + j * 4) // 4)
            for i in T.parallel(128):
                for j in T.parallel(128):
                    gate_logits_local_1[i, j] = gate_logits_local_1[i, j] * (T.float32(1.0) / (T.float32(1.0) + T.exp2(gate_logits_local_1[i, j] * T.float32(-1.0) * T.float32(1.44269504))))
                    if i < actual_rows:
                        up_logits[m_start + i, by * 128 + j] = T.Cast("float16", up_logits_local_1[i, j] * gate_logits_local_1[i, j])
    by = T.launch_thread("blockIdx.x", 28)
    bx = T.launch_thread("blockIdx.y", 96)
    tx = T.launch_thread("threadIdx.x", 256)
    ty = T.launch_thread("threadIdx.y", 1)
    tz = T.launch_thread("threadIdx.z", 1)
    with T.block("tilelang_root"):
        T.reads(group_idx_for_bx[bx], group_sizes[group_idx_for_bx[bx]], group_padded_offsets[group_idx_for_bx[bx]], group_offsets[group_idx_for_bx[bx]], up_logits[bx * 128 - group_padded_offsets[group_idx_for_bx[bx]] + group_offsets[group_idx_for_bx[bx]], 0:1985], routed_expert_down[group_idx_for_bx[bx], by * 256, 0:1985], routed_expert_weights[bx * 128 + tx // 64 * 32 + group_offsets[group_idx_for_bx[bx]] + tx % 16 - group_padded_offsets[group_idx_for_bx[bx]]:bx * 128 + tx // 64 * 32 + group_offsets[group_idx_for_bx[bx]] + tx % 16 - group_padded_offsets[group_idx_for_bx[bx]] + 17])
        T.writes(output[bx * 128 + group_offsets[group_idx_for_bx[bx]] - group_padded_offsets[group_idx_for_bx[bx]]:bx * 128 + group_offsets[group_idx_for_bx[bx]] - group_padded_offsets[group_idx_for_bx[bx]] + 128, by * 256:by * 256 + 256])
        up_logits_shared = T.handle("float16", "local.fragment")
        routed_expert_down_shared = T.handle("float16", "shared.dyn")
        output_local = T.handle("float32", "local.fragment")
        T.block_attr({"layout_map": {up_logits_shared: metadata["tl.Fragment"][3], routed_expert_down_shared: metadata["tl.Layout"][2], output_local: metadata["tl.Fragment"][4]}})
        up_logits_shared_1 = T.alloc_buffer((128, 64), "float16", data=up_logits_shared, scope="local.fragment")
        routed_expert_down_shared_1 = T.alloc_buffer((256, 64), "float16", data=routed_expert_down_shared, scope="shared.dyn")
        output_local_1 = T.alloc_buffer((128, 256), data=output_local, scope="local.fragment")
        down_weight_local = T.alloc_buffer((128,), "float16", scope="local")
        routed_weight_local = T.alloc_buffer((2,), "float16", scope="local")
        m_start_padded: T.int32 = bx * 128
        cur_group_idx: T.int32 = group_idx_for_bx[bx]
        T.assume(cur_group_idx >= 0)
        T.assume(cur_group_idx < 64)
        cur_group_size: T.int32 = group_sizes[cur_group_idx]
        m_start: T.int32 = m_start_padded - group_padded_offsets[cur_group_idx] + group_offsets[cur_group_idx]
        actual_rows: T.int32 = T.max(0, T.min(128, cur_group_size - (m_start_padded - group_padded_offsets[cur_group_idx])))
        T.fill(T.region(output_local_1[0, 0], 2, 128, 256), 0)
        for k in T.serial(32, annotations={"num_stages": 1}):
            T.copy(T.region(up_logits[m_start, k * 64], 1, 128, 64), T.region(up_logits_shared_1[0, 0], 2, 128, 64))
            T.copy(T.region(routed_expert_down[cur_group_idx, by * 256, k * 64], 1, 1, 256, 64), T.region(routed_expert_down_shared_1[0, 0], 2, 256, 64))
            for ki in range(2):
                tx_1: T.int32 = tx % 64
                _: T.int32 = tx // 64 % 4
                for j in range(16):
                    for local_id in T.vectorized(8):
                        row: T.int32 = tx_1 % 16
                        col: T.int32 = tx_1 // 16 * 8 + local_id
                        l: T.int32 = j * 16
                        r: T.int32 = ki * 32
                        down_weight_local[j * 2 * 4 + local_id] = routed_expert_down_shared_1[l + row, r + col]
                for kp, i, j in T.grid(2, 2, 16):
                    T.tvm_mfma("16x16x16f16", "row", "row", "float16x4", "float16x4", "float32x4", down_weight_local.data, (j * 2 + kp) * 4 // 4, up_logits_shared, (ki * 2 * 2 * 4 + (i * 2 + kp) * 4) // 4, output_local, (i * 16 * 4 + j * 4) // 4)
        for row_slot in range(2):
            routed_row: T.int32 = tx // 64 * 32 + row_slot * 16 + tx % 16
            routed_weight_local[row_slot] = T.float16(0.0)
            if routed_row < actual_rows:
                routed_weight_local[row_slot] = routed_expert_weights[m_start + routed_row]
        for i in T.parallel(128):
            for j in T.parallel(256):
                if i < actual_rows:
                    output[m_start + i, by * 256 + j] = T.Cast("float16", output_local_1[i, j] * T.Cast("float32", routed_weight_local[i // 16 % 2]))
