metadata = tvm.ir.load_json("""{
  \"root_index\": 350,
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
        \"value\": 64
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
        \"name\": 5,
        \"type_annotation\": 6
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
        \"name\": 8,
        \"type_annotation\": 9
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        7,
        10
      ]
    },
    {
      \"type\": \"tl.Layout\",
      \"data\": {
        \"input_size\": 4,
        \"forward_index\": 11
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
        13,
        14
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
        \"a\": 7,
        \"b\": 17
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
        \"a\": 7,
        \"b\": 19
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
        \"a\": 20,
        \"b\": 21
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
        \"a\": 10,
        \"b\": 23
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
        \"a\": 7,
        \"b\": 25
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
        \"a\": 26,
        \"b\": 27
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 24,
        \"b\": 28
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
        \"a\": 29,
        \"b\": 30
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
        \"a\": 31,
        \"b\": 32
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 22,
        \"b\": 33
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
        \"a\": 10,
        \"b\": 35
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
        \"a\": 36,
        \"b\": 37
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
        \"a\": 7,
        \"b\": 39
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
        \"a\": 40,
        \"b\": 41
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 38,
        \"b\": 42
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
        \"a\": 43,
        \"b\": 44
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
        \"a\": 45,
        \"b\": 46
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 34,
        \"b\": 47
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
        \"a\": 10,
        \"b\": 49
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
        \"a\": 50,
        \"b\": 51
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
        \"a\": 7,
        \"b\": 53
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 52,
        \"b\": 54
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
        \"a\": 55,
        \"b\": 56
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
        \"a\": 57,
        \"b\": 58
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 48,
        \"b\": 59
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
        \"a\": 10,
        \"b\": 61
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 60,
        \"b\": 62
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        16,
        18,
        63
      ]
    },
    {
      \"type\": \"tl.Layout\",
      \"data\": {
        \"input_size\": 15,
        \"forward_index\": 64
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
        66,
        67
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
        \"a\": 7,
        \"b\": 70
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
        \"a\": 7,
        \"b\": 72
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
        \"a\": 73,
        \"b\": 74
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
        \"a\": 10,
        \"b\": 76
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
        \"a\": 7,
        \"b\": 78
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
        \"a\": 79,
        \"b\": 80
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 77,
        \"b\": 81
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
        \"a\": 82,
        \"b\": 83
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
        \"a\": 84,
        \"b\": 85
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 75,
        \"b\": 86
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
        \"a\": 10,
        \"b\": 88
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
        \"a\": 89,
        \"b\": 90
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
        \"a\": 7,
        \"b\": 92
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
        \"a\": 93,
        \"b\": 94
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 91,
        \"b\": 95
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
        \"a\": 96,
        \"b\": 97
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
        \"a\": 98,
        \"b\": 99
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 87,
        \"b\": 100
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
        \"a\": 10,
        \"b\": 102
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
        \"a\": 103,
        \"b\": 104
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
        \"a\": 7,
        \"b\": 106
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 105,
        \"b\": 107
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
        \"a\": 108,
        \"b\": 109
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
        \"a\": 110,
        \"b\": 111
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 101,
        \"b\": 112
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
        \"a\": 10,
        \"b\": 114
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 113,
        \"b\": 115
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        69,
        71,
        116
      ]
    },
    {
      \"type\": \"tl.Layout\",
      \"data\": {
        \"input_size\": 68,
        \"forward_index\": 117
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
        119,
        120
      ]
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        7,
        10
      ]
    },
    {
      \"type\": \"tl.Layout\",
      \"data\": {
        \"input_size\": 121,
        \"forward_index\": 122
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
        124,
        125
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
        \"a\": 7,
        \"b\": 128
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
        \"a\": 7,
        \"b\": 130
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
        \"a\": 131,
        \"b\": 132
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
        \"a\": 10,
        \"b\": 134
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
        \"a\": 7,
        \"b\": 136
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
        \"a\": 137,
        \"b\": 138
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 135,
        \"b\": 139
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
        \"a\": 140,
        \"b\": 141
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
        \"a\": 142,
        \"b\": 143
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 133,
        \"b\": 144
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
        \"a\": 10,
        \"b\": 146
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
        \"a\": 147,
        \"b\": 148
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
        \"a\": 7,
        \"b\": 150
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
        \"a\": 151,
        \"b\": 152
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 149,
        \"b\": 153
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
        \"a\": 154,
        \"b\": 155
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
        \"a\": 156,
        \"b\": 157
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 145,
        \"b\": 158
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
        \"a\": 10,
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
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 161,
        \"b\": 162
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
        \"a\": 7,
        \"b\": 164
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 163,
        \"b\": 165
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
        \"a\": 166,
        \"b\": 167
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
        \"a\": 168,
        \"b\": 169
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 159,
        \"b\": 170
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
        \"a\": 10,
        \"b\": 172
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 171,
        \"b\": 173
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        127,
        129,
        174
      ]
    },
    {
      \"type\": \"tl.Layout\",
      \"data\": {
        \"input_size\": 126,
        \"forward_index\": 175
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        12,
        65,
        118,
        123,
        176
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
        179,
        180
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
        \"a\": 10,
        \"b\": 182
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
        \"a\": 183,
        \"b\": 184
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
        \"a\": 7,
        \"b\": 186
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
        \"a\": 187,
        \"b\": 188
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
        \"a\": 189,
        \"b\": 190
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 185,
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
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 10,
        \"b\": 193
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 192,
        \"b\": 194
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        195
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
        \"a\": 7,
        \"b\": 197
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
        \"a\": 198,
        \"b\": 199
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
        \"a\": 10,
        \"b\": 201
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
        \"a\": 202,
        \"b\": 203
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
        \"a\": 204,
        \"b\": 205
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 200,
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
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 7,
        \"b\": 208
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 207,
        \"b\": 209
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
        \"input_size\": 181,
        \"forward_index\": 196,
        \"forward_thread\": 210,
        \"replicate_size\": 211
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
        213,
        214
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
        \"a\": 7,
        \"b\": 216
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
        \"a\": 217,
        \"b\": 218
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
        \"a\": 219,
        \"b\": 220
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
        \"a\": 10,
        \"b\": 222
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
        \"a\": 223,
        \"b\": 224
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 221,
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
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 10,
        \"b\": 227
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 226,
        \"b\": 228
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        229
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
        \"a\": 7,
        \"b\": 231
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
        \"a\": 232,
        \"b\": 233
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
        \"a\": 10,
        \"b\": 235
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
        \"a\": 236,
        \"b\": 237
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
        \"a\": 238,
        \"b\": 239
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 234,
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
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 7,
        \"b\": 242
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 241,
        \"b\": 243
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
        \"input_size\": 215,
        \"forward_index\": 230,
        \"forward_thread\": 244,
        \"replicate_size\": 245
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
        247,
        248
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
        \"a\": 7,
        \"b\": 250
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
        \"a\": 251,
        \"b\": 252
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
        \"a\": 253,
        \"b\": 254
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
        \"a\": 10,
        \"b\": 256
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
        \"a\": 257,
        \"b\": 258
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 255,
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
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 10,
        \"b\": 261
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 260,
        \"b\": 262
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        263
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
        \"a\": 7,
        \"b\": 265
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
        \"a\": 266,
        \"b\": 267
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
        \"a\": 10,
        \"b\": 269
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
        \"a\": 270,
        \"b\": 271
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
        \"a\": 272,
        \"b\": 273
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 268,
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
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 7,
        \"b\": 276
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 275,
        \"b\": 277
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
        \"input_size\": 249,
        \"forward_index\": 264,
        \"forward_thread\": 278,
        \"replicate_size\": 279
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
        281,
        282
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
        \"a\": 10,
        \"b\": 284
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
        \"a\": 285,
        \"b\": 286
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
        \"a\": 7,
        \"b\": 288
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
        \"a\": 289,
        \"b\": 290
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
        \"a\": 291,
        \"b\": 292
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 287,
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
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 10,
        \"b\": 295
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 294,
        \"b\": 296
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        297
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
        \"a\": 7,
        \"b\": 299
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
        \"a\": 300,
        \"b\": 301
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
        \"a\": 10,
        \"b\": 303
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
        \"a\": 304,
        \"b\": 305
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
        \"a\": 306,
        \"b\": 307
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 302,
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
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 7,
        \"b\": 310
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 309,
        \"b\": 311
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
        \"input_size\": 283,
        \"forward_index\": 298,
        \"forward_thread\": 312,
        \"replicate_size\": 313
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
        315,
        316
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
        \"a\": 7,
        \"b\": 318
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
        \"a\": 319,
        \"b\": 320
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
        \"a\": 321,
        \"b\": 322
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
        \"a\": 10,
        \"b\": 324
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
        \"a\": 325,
        \"b\": 326
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 323,
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
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 10,
        \"b\": 329
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 328,
        \"b\": 330
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        331
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
        \"a\": 7,
        \"b\": 333
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
        \"a\": 334,
        \"b\": 335
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
        \"a\": 10,
        \"b\": 337
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
        \"a\": 338,
        \"b\": 339
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
        \"a\": 340,
        \"b\": 341
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 336,
        \"b\": 342
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
        \"a\": 7,
        \"b\": 344
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 343,
        \"b\": 345
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
        \"input_size\": 317,
        \"forward_index\": 332,
        \"forward_thread\": 346,
        \"replicate_size\": 347
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        212,
        246,
        280,
        314,
        348
      ]
    },
    {
      \"type\": \"ffi.Map\",
      \"data\": [
        0,
        177,
        178,
        349
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
    with T.launch_thread("blockIdx.x", 32) as by:
        bx = T.launch_thread("blockIdx.y", 96)
        thread_binding = T.launch_thread("threadIdx.x", 256)
        ty = T.launch_thread("threadIdx.y", 1)
        tz = T.launch_thread("threadIdx.z", 1)
        with T.block("tilelang_root"):
            T.reads(group_idx_for_bx[bx], group_sizes[group_idx_for_bx[bx]], group_padded_offsets[group_idx_for_bx[bx]], group_offsets[group_idx_for_bx[bx]], routed_expert_gate[group_idx_for_bx[bx], by * 64, 0:7105], routed_expert_up[group_idx_for_bx[bx], by * 64, 0:7105], input[bx * 128 - group_padded_offsets[group_idx_for_bx[bx]] + group_offsets[group_idx_for_bx[bx]], 0:7105])
            T.writes(up_logits[bx * 128 + group_offsets[group_idx_for_bx[bx]] - group_padded_offsets[group_idx_for_bx[bx]]:bx * 128 + group_offsets[group_idx_for_bx[bx]] - group_padded_offsets[group_idx_for_bx[bx]] + 128, by * 64:by * 64 + 64])
            input_shared = T.handle("float16", "local.fragment")
            routed_expert_gate_staging = T.handle("float16", "shared.dyn")
            routed_expert_up_staging = T.handle("float16", "shared.dyn")
            routed_expert_gate_compute = T.handle("float16", "shared.dyn")
            routed_expert_up_compute = T.handle("float16", "shared.dyn")
            gate_logits_local = T.handle("float32", "local.fragment")
            up_logits_local = T.handle("float32", "local.fragment")
            T.block_attr({"layout_map": {input_shared: metadata["tl.Fragment"][0], routed_expert_gate_staging: metadata["tl.Layout"][0], routed_expert_up_staging: metadata["tl.Layout"][0], routed_expert_gate_compute: metadata["tl.Layout"][1], routed_expert_up_compute: metadata["tl.Layout"][2], gate_logits_local: metadata["tl.Fragment"][1], up_logits_local: metadata["tl.Fragment"][2]}})
            input_shared_1 = T.alloc_buffer((128, 64), "float16", data=input_shared, scope="local.fragment")
            routed_expert_gate_staging_1 = T.alloc_buffer((64, 64), "float16", data=routed_expert_gate_staging, scope="shared.dyn")
            routed_expert_gate_compute_1 = T.alloc_buffer((64, 64), "float16", data=routed_expert_gate_compute, scope="shared.dyn")
            routed_expert_up_staging_1 = T.alloc_buffer((64, 64), "float16", data=routed_expert_up_staging, scope="shared.dyn")
            routed_expert_up_compute_1 = T.alloc_buffer((64, 64), "float16", data=routed_expert_up_compute, scope="shared.dyn")
            step1_gate_barrier = T.alloc_buffer((1,), "void", scope="local.barrier")
            step1_up_barrier = T.alloc_buffer((1,), "void", scope="local.barrier")
            gate_logits_local_1 = T.alloc_buffer((128, 64), data=gate_logits_local, scope="local.fragment")
            up_logits_local_1 = T.alloc_buffer((128, 64), data=up_logits_local, scope="local.fragment")
            expert_weight_local = T.alloc_buffer((32,), "float16", scope="local")
            m_start_padded: T.int32 = bx * 128
            cur_group_idx: T.int32 = group_idx_for_bx[bx]
            T.assume(cur_group_idx >= 0)
            T.assume(cur_group_idx < 64)
            cur_group_size: T.int32 = group_sizes[cur_group_idx]
            m_start: T.int32 = m_start_padded - group_padded_offsets[cur_group_idx] + group_offsets[cur_group_idx]
            actual_rows: T.int32 = T.max(0, T.min(128, cur_group_size - (m_start_padded - group_padded_offsets[cur_group_idx])))
            T.fill(T.region(gate_logits_local_1[0, 0], 2, 128, 64), 0)
            T.fill(T.region(up_logits_local_1[0, 0], 2, 128, 64), 0)
            T.maca_async_copy(T.region(routed_expert_gate[cur_group_idx, by * 64, 0], 1, 1, 64, 64), T.region(routed_expert_gate_staging_1[0, 0], 2, 64, 64), barrier=step1_gate_barrier[0])
            T.maca_async_copy(T.region(routed_expert_up[cur_group_idx, by * 64, 0], 1, 1, 64, 64), T.region(routed_expert_up_staging_1[0, 0], 2, 64, 64), barrier=step1_up_barrier[0])
            for k in range(112):
                T.copy(T.region(input[m_start, k * 64], 1, 128, 64), T.region(input_shared_1[0, 0], 2, 128, 64))
                T.maca_barrier_arrive_and_wait(step1_gate_barrier[0])
                T.maca_barrier_arrive_and_wait(step1_up_barrier[0])
                T.tvm_storage_sync("shared")
                T.copy(T.region(routed_expert_gate_staging_1[0, 0], 1, 64, 64), T.region(routed_expert_gate_compute_1[0, 0], 2, 64, 64))
                T.copy(T.region(routed_expert_up_staging_1[0, 0], 1, 64, 64), T.region(routed_expert_up_compute_1[0, 0], 2, 64, 64))
                T.tvm_storage_sync("shared")
                if k + 1 < 112:
                    T.maca_async_copy(T.region(routed_expert_gate[cur_group_idx, by * 64, (k + 1) * 64], 1, 1, 64, 64), T.region(routed_expert_gate_staging_1[0, 0], 2, 64, 64), barrier=step1_gate_barrier[0])
                    T.maca_async_copy(T.region(routed_expert_up[cur_group_idx, by * 64, (k + 1) * 64], 1, 1, 64, 64), T.region(routed_expert_up_staging_1[0, 0], 2, 64, 64), barrier=step1_up_barrier[0])
                for ki in range(2):
                    tx: T.int32 = thread_binding % 64
                    _: T.int32 = thread_binding // 64 % 4
                    for j in range(4):
                        for local_id in T.vectorized(8):
                            row: T.int32 = tx % 16
                            col: T.int32 = tx // 16 * 8 + local_id
                            l: T.int32 = j * 16
                            r: T.int32 = ki * 32
                            expert_weight_local[j * 2 * 4 + local_id] = routed_expert_gate_compute_1[l + row, r + col]
                    for kp, i, j in T.grid(2, 2, 4):
                        T.tvm_mfma("16x16x16f16", "row", "row", "float16x4", "float16x4", "float32x4", expert_weight_local.data, (j * 2 + kp) * 4 // 4, input_shared, (ki * 2 * 2 * 4 + (i * 2 + kp) * 4) // 4, gate_logits_local, (i * 4 * 4 + j * 4) // 4)
                    tx_1: T.int32 = thread_binding % 64
                    __1: T.int32 = thread_binding // 64 % 4
                    for j in range(4):
                        for local_id in T.vectorized(8):
                            row: T.int32 = tx_1 % 16
                            col: T.int32 = tx_1 // 16 * 8 + local_id
                            l: T.int32 = j * 16
                            r: T.int32 = ki * 32
                            expert_weight_local[j * 2 * 4 + local_id] = routed_expert_up_compute_1[l + row, r + col]
                    for kp, i, j in T.grid(2, 2, 4):
                        T.tvm_mfma("16x16x16f16", "row", "row", "float16x4", "float16x4", "float32x4", expert_weight_local.data, (j * 2 + kp) * 4 // 4, input_shared, (ki * 2 * 2 * 4 + (i * 2 + kp) * 4) // 4, up_logits_local, (i * 4 * 4 + j * 4) // 4)
                T.tvm_storage_sync("shared")
            for i in T.parallel(128):
                for j in T.parallel(64):
                    gate_logits_local_1[i, j] = gate_logits_local_1[i, j] * (T.float32(1.0) / (T.float32(1.0) + T.exp2(gate_logits_local_1[i, j] * T.float32(-1.0) * T.float32(1.44269504))))
                    if i < actual_rows:
                        up_logits[m_start + i, by * 64 + j] = T.Cast("float16", up_logits_local_1[i, j] * gate_logits_local_1[i, j])
    by = T.launch_thread("blockIdx.x", 56)
    bx = T.launch_thread("blockIdx.y", 96)
    tx = T.launch_thread("threadIdx.x", 256)
    ty = T.launch_thread("threadIdx.y", 1)
    tz = T.launch_thread("threadIdx.z", 1)
    with T.block("tilelang_root"):
        T.reads(group_idx_for_bx[bx], group_sizes[group_idx_for_bx[bx]], group_padded_offsets[group_idx_for_bx[bx]], group_offsets[group_idx_for_bx[bx]], routed_expert_down[group_idx_for_bx[bx], by * 128, 0:1985], up_logits[bx * 128 - group_padded_offsets[group_idx_for_bx[bx]] + group_offsets[group_idx_for_bx[bx]], 0:1985], routed_expert_weights[bx * 128 + tx // 64 * 32 + group_offsets[group_idx_for_bx[bx]] + tx % 16 - group_padded_offsets[group_idx_for_bx[bx]]:bx * 128 + tx // 64 * 32 + group_offsets[group_idx_for_bx[bx]] + tx % 16 - group_padded_offsets[group_idx_for_bx[bx]] + 17])
        T.writes(output[bx * 128 + group_offsets[group_idx_for_bx[bx]] - group_padded_offsets[group_idx_for_bx[bx]]:bx * 128 + group_offsets[group_idx_for_bx[bx]] - group_padded_offsets[group_idx_for_bx[bx]] + 128, by * 128:by * 128 + 128])
        up_logits_shared = T.handle("float16", "local.fragment")
        routed_expert_down_staging = T.handle("float16", "shared.dyn")
        routed_expert_down_compute = T.handle("float16", "shared.dyn")
        output_local = T.handle("float32", "local.fragment")
        T.block_attr({"layout_map": {up_logits_shared: metadata["tl.Fragment"][3], routed_expert_down_staging: metadata["tl.Layout"][3], routed_expert_down_compute: metadata["tl.Layout"][4], output_local: metadata["tl.Fragment"][4]}})
        up_logits_shared_1 = T.alloc_buffer((128, 64), "float16", data=up_logits_shared, scope="local.fragment")
        routed_expert_down_staging_1 = T.alloc_buffer((128, 64), "float16", data=routed_expert_down_staging, scope="shared.dyn")
        routed_expert_down_compute_1 = T.alloc_buffer((128, 64), "float16", data=routed_expert_down_compute, scope="shared.dyn")
        step2_weight_barrier = T.alloc_buffer((1,), "void", scope="local.barrier")
        output_local_1 = T.alloc_buffer((128, 128), data=output_local, scope="local.fragment")
        down_weight_local = T.alloc_buffer((64,), "float16", scope="local")
        routed_weight_local = T.alloc_buffer((2,), "float16", scope="local")
        m_start_padded: T.int32 = bx * 128
        cur_group_idx: T.int32 = group_idx_for_bx[bx]
        T.assume(cur_group_idx >= 0)
        T.assume(cur_group_idx < 64)
        cur_group_size: T.int32 = group_sizes[cur_group_idx]
        m_start: T.int32 = m_start_padded - group_padded_offsets[cur_group_idx] + group_offsets[cur_group_idx]
        actual_rows: T.int32 = T.max(0, T.min(128, cur_group_size - (m_start_padded - group_padded_offsets[cur_group_idx])))
        T.fill(T.region(output_local_1[0, 0], 2, 128, 128), 0)
        T.maca_async_copy(T.region(routed_expert_down[cur_group_idx, by * 128, 0], 1, 1, 128, 64), T.region(routed_expert_down_staging_1[0, 0], 2, 128, 64), barrier=step2_weight_barrier[0])
        for k in range(32):
            T.copy(T.region(up_logits[m_start, k * 64], 1, 128, 64), T.region(up_logits_shared_1[0, 0], 2, 128, 64))
            T.maca_barrier_arrive_and_wait(step2_weight_barrier[0])
            T.tvm_storage_sync("shared")
            T.copy(T.region(routed_expert_down_staging_1[0, 0], 1, 128, 64), T.region(routed_expert_down_compute_1[0, 0], 2, 128, 64))
            T.tvm_storage_sync("shared")
            if k + 1 < 32:
                T.maca_async_copy(T.region(routed_expert_down[cur_group_idx, by * 128, (k + 1) * 64], 1, 1, 128, 64), T.region(routed_expert_down_staging_1[0, 0], 2, 128, 64), barrier=step2_weight_barrier[0])
            for ki in range(2):
                tx_1: T.int32 = tx % 64
                _: T.int32 = tx // 64 % 4
                for j in range(8):
                    for local_id in T.vectorized(8):
                        row: T.int32 = tx_1 % 16
                        col: T.int32 = tx_1 // 16 * 8 + local_id
                        l: T.int32 = j * 16
                        r: T.int32 = ki * 32
                        down_weight_local[j * 2 * 4 + local_id] = routed_expert_down_compute_1[l + row, r + col]
                for kp, i, j in T.grid(2, 2, 8):
                    T.tvm_mfma("16x16x16f16", "row", "row", "float16x4", "float16x4", "float32x4", down_weight_local.data, (j * 2 + kp) * 4 // 4, up_logits_shared, (ki * 2 * 2 * 4 + (i * 2 + kp) * 4) // 4, output_local, (i * 8 * 4 + j * 4) // 4)
            T.tvm_storage_sync("shared")
        for row_slot in range(2):
            routed_row: T.int32 = tx // 64 * 32 + row_slot * 16 + tx % 16
            routed_weight_local[row_slot] = T.float16(0.0)
            if routed_row < actual_rows:
                routed_weight_local[row_slot] = routed_expert_weights[m_start + routed_row]
        for i in T.parallel(128):
            for j in T.parallel(128):
                if i < actual_rows:
                    output[m_start + i, by * 128 + j] = T.Cast("float16", output_local_1[i, j] * T.Cast("float32", routed_weight_local[i // 16 % 2]))
