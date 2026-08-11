metadata = tvm.ir.load_json("""{
  \"root_index\": 191,
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
        13,
        14
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
        \"input_size\": 15,
        \"forward_index\": 16
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        12,
        17
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
        20,
        21
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
        \"b\": 23
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
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 7,
        \"b\": 27
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
        \"a\": 28,
        \"b\": 29
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
        \"a\": 30,
        \"b\": 31
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 26,
        \"b\": 32
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
        \"b\": 34
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 33,
        \"b\": 35
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        36
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
        \"b\": 38
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
        \"a\": 39,
        \"b\": 40
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
        \"b\": 42
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
        \"a\": 41,
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
        \"a\": 7,
        \"b\": 49
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 48,
        \"b\": 50
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
        \"input_size\": 22,
        \"forward_index\": 37,
        \"forward_thread\": 51,
        \"replicate_size\": 52
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
        54,
        55
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
        \"b\": 57
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
        \"a\": 58,
        \"b\": 59
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
        \"a\": 60,
        \"b\": 61
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
        \"b\": 63
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
        \"a\": 64,
        \"b\": 65
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 62,
        \"b\": 66
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
        \"b\": 68
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 67,
        \"b\": 69
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        70
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
        \"value\": 16
      }
    },
    {
      \"type\": \"tir.FloorMod\",
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
        \"value\": 4
      }
    },
    {
      \"type\": \"tir.FloorDiv\",
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
        \"value\": 16
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
        \"a\": 75,
        \"b\": 81
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
        \"b\": 83
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 82,
        \"b\": 84
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
        \"input_size\": 56,
        \"forward_index\": 71,
        \"forward_thread\": 85,
        \"replicate_size\": 86
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
        88,
        89
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
        \"b\": 91
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
        \"a\": 92,
        \"b\": 93
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
        \"a\": 94,
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
      \"type\": \"tir.FloorDiv\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 10,
        \"b\": 97
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
        \"a\": 98,
        \"b\": 99
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 96,
        \"b\": 100
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
        \"b\": 102
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 101,
        \"b\": 103
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        104
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
        \"b\": 106
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
        \"a\": 107,
        \"b\": 108
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
        \"b\": 110
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
        \"a\": 111,
        \"b\": 112
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
        \"a\": 113,
        \"b\": 114
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 109,
        \"b\": 115
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
        \"b\": 117
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 116,
        \"b\": 118
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
        \"input_size\": 90,
        \"forward_index\": 105,
        \"forward_thread\": 119,
        \"replicate_size\": 120
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
        122,
        123
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
        \"b\": 125
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
        \"a\": 126,
        \"b\": 127
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
        \"b\": 129
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
        \"a\": 130,
        \"b\": 131
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
        \"a\": 132,
        \"b\": 133
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 128,
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
        \"a\": 10,
        \"b\": 136
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 135,
        \"b\": 137
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        138
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
        \"b\": 140
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
        \"a\": 141,
        \"b\": 142
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
        \"b\": 144
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
        \"a\": 145,
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
      \"type\": \"tir.Mul\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 147,
        \"b\": 148
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 143,
        \"b\": 149
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
        \"b\": 151
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 150,
        \"b\": 152
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
        \"input_size\": 124,
        \"forward_index\": 139,
        \"forward_thread\": 153,
        \"replicate_size\": 154
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
        156,
        157
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
        \"b\": 159
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
        \"a\": 160,
        \"b\": 161
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
        \"a\": 162,
        \"b\": 163
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
        \"b\": 165
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
        \"a\": 166,
        \"b\": 167
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 164,
        \"b\": 168
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
        \"b\": 170
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 169,
        \"b\": 171
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        172
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
        \"b\": 174
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
        \"a\": 175,
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
      \"type\": \"tir.FloorMod\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 10,
        \"b\": 178
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
        \"a\": 179,
        \"b\": 180
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
        \"a\": 181,
        \"b\": 182
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 177,
        \"b\": 183
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
        \"b\": 185
      }
    },
    {
      \"type\": \"tir.Add\",
      \"data\": {
        \"span\": 1,
        \"dtype\": \"int32\",
        \"a\": 184,
        \"b\": 186
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
        \"input_size\": 158,
        \"forward_index\": 173,
        \"forward_thread\": 187,
        \"replicate_size\": 188
      }
    },
    {
      \"type\": \"ffi.Array\",
      \"data\": [
        53,
        87,
        121,
        155,
        189
      ]
    },
    {
      \"type\": \"ffi.Map\",
      \"data\": [
        0,
        18,
        19,
        190
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
            T.reads(group_idx_for_bx[bx], group_sizes[group_idx_for_bx[bx]], group_padded_offsets[group_idx_for_bx[bx]], group_offsets[group_idx_for_bx[bx]], routed_expert_gate[group_idx_for_bx[bx], by * 64, 0:7105], routed_expert_up[group_idx_for_bx[bx], by * 64, 0:7105], input[bx * 128 + group_offsets[group_idx_for_bx[bx]] - group_padded_offsets[group_idx_for_bx[bx]], 0:7105])
            T.writes(up_logits[bx * 128 + group_offsets[group_idx_for_bx[bx]] - group_padded_offsets[group_idx_for_bx[bx]]:bx * 128 + group_offsets[group_idx_for_bx[bx]] - group_padded_offsets[group_idx_for_bx[bx]] + 128, by * 64:by * 64 + 64])
            input_shared = T.handle("float16", "local.fragment")
            routed_expert_gate_shared_0 = T.handle("float16", "shared.dyn")
            routed_expert_gate_shared_1 = T.handle("float16", "shared.dyn")
            routed_expert_up_shared_0 = T.handle("float16", "shared.dyn")
            routed_expert_up_shared_1 = T.handle("float16", "shared.dyn")
            gate_logits_local = T.handle("float32", "local.fragment")
            up_logits_local = T.handle("float32", "local.fragment")
            T.block_attr({"layout_map": {input_shared: metadata["tl.Fragment"][0], routed_expert_gate_shared_0: metadata["tl.Layout"][0], routed_expert_gate_shared_1: metadata["tl.Layout"][0], routed_expert_up_shared_0: metadata["tl.Layout"][0], routed_expert_up_shared_1: metadata["tl.Layout"][0], gate_logits_local: metadata["tl.Fragment"][1], up_logits_local: metadata["tl.Fragment"][2]}})
            input_shared_1 = T.alloc_buffer((128, 64), "float16", data=input_shared, scope="local.fragment")
            routed_expert_gate_shared_0_1 = T.alloc_buffer((64, 64), "float16", data=routed_expert_gate_shared_0, scope="shared.dyn")
            routed_expert_gate_shared_1_1 = T.alloc_buffer((64, 64), "float16", data=routed_expert_gate_shared_1, scope="shared.dyn")
            routed_expert_up_shared_0_1 = T.alloc_buffer((64, 64), "float16", data=routed_expert_up_shared_0, scope="shared.dyn")
            routed_expert_up_shared_1_1 = T.alloc_buffer((64, 64), "float16", data=routed_expert_up_shared_1, scope="shared.dyn")
            step1_gate_barrier_0 = T.alloc_buffer((1,), "void", scope="local.barrier")
            step1_gate_barrier_1 = T.alloc_buffer((1,), "void", scope="local.barrier")
            step1_up_barrier_0 = T.alloc_buffer((1,), "void", scope="local.barrier")
            step1_up_barrier_1 = T.alloc_buffer((1,), "void", scope="local.barrier")
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
            T.maca_async_copy(T.region(routed_expert_gate[cur_group_idx, by * 64, 0], 1, 1, 64, 64), T.region(routed_expert_gate_shared_0_1[0, 0], 2, 64, 64), barrier=step1_gate_barrier_0[0])
            T.maca_async_copy(T.region(routed_expert_up[cur_group_idx, by * 64, 0], 1, 1, 64, 64), T.region(routed_expert_up_shared_0_1[0, 0], 2, 64, 64), barrier=step1_up_barrier_0[0])
            T.maca_async_copy(T.region(routed_expert_gate[cur_group_idx, by * 64, 64], 1, 1, 64, 64), T.region(routed_expert_gate_shared_1_1[0, 0], 2, 64, 64), barrier=step1_gate_barrier_1[0])
            T.maca_async_copy(T.region(routed_expert_up[cur_group_idx, by * 64, 64], 1, 1, 64, 64), T.region(routed_expert_up_shared_1_1[0, 0], 2, 64, 64), barrier=step1_up_barrier_1[0])
            for k_pair in range(56):
                k_even: T.int32 = 2 * k_pair
                k_odd: T.int32 = k_even + 1
                T.copy(T.region(input[m_start, k_even * 64], 1, 128, 64), T.region(input_shared_1[0, 0], 2, 128, 64))
                T.maca_barrier_arrive_and_wait(step1_gate_barrier_0[0])
                T.maca_barrier_arrive_and_wait(step1_up_barrier_0[0])
                T.tvm_storage_sync("shared")
                for ki in range(2):
                    tx: T.int32 = thread_binding % 64
                    _: T.int32 = thread_binding // 64 % 4
                    for j in range(4):
                        for local_id in T.vectorized(8):
                            row: T.int32 = tx % 16
                            col: T.int32 = tx // 16 * 8 + local_id
                            l: T.int32 = j * 16
                            r: T.int32 = ki * 32
                            expert_weight_local[j * 2 * 4 + local_id] = routed_expert_gate_shared_0_1[l + row, r + col]
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
                            expert_weight_local[j * 2 * 4 + local_id] = routed_expert_up_shared_0_1[l + row, r + col]
                    for kp, i, j in T.grid(2, 2, 4):
                        T.tvm_mfma("16x16x16f16", "row", "row", "float16x4", "float16x4", "float32x4", expert_weight_local.data, (j * 2 + kp) * 4 // 4, input_shared, (ki * 2 * 2 * 4 + (i * 2 + kp) * 4) // 4, up_logits_local, (i * 4 * 4 + j * 4) // 4)
                T.tvm_storage_sync("shared")
                if k_pair + 1 < 56:
                    T.maca_async_copy(T.region(routed_expert_gate[cur_group_idx, by * 64, (k_even + 2) * 64], 1, 1, 64, 64), T.region(routed_expert_gate_shared_0_1[0, 0], 2, 64, 64), barrier=step1_gate_barrier_0[0])
                    T.maca_async_copy(T.region(routed_expert_up[cur_group_idx, by * 64, (k_even + 2) * 64], 1, 1, 64, 64), T.region(routed_expert_up_shared_0_1[0, 0], 2, 64, 64), barrier=step1_up_barrier_0[0])
                T.copy(T.region(input[m_start, k_odd * 64], 1, 128, 64), T.region(input_shared_1[0, 0], 2, 128, 64))
                T.maca_barrier_arrive_and_wait(step1_gate_barrier_1[0])
                T.maca_barrier_arrive_and_wait(step1_up_barrier_1[0])
                T.tvm_storage_sync("shared")
                for ki in range(2):
                    tx: T.int32 = thread_binding % 64
                    _: T.int32 = thread_binding // 64 % 4
                    for j in range(4):
                        for local_id in T.vectorized(8):
                            row: T.int32 = tx % 16
                            col: T.int32 = tx // 16 * 8 + local_id
                            l: T.int32 = j * 16
                            r: T.int32 = ki * 32
                            expert_weight_local[j * 2 * 4 + local_id] = routed_expert_gate_shared_1_1[l + row, r + col]
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
                            expert_weight_local[j * 2 * 4 + local_id] = routed_expert_up_shared_1_1[l + row, r + col]
                    for kp, i, j in T.grid(2, 2, 4):
                        T.tvm_mfma("16x16x16f16", "row", "row", "float16x4", "float16x4", "float32x4", expert_weight_local.data, (j * 2 + kp) * 4 // 4, input_shared, (ki * 2 * 2 * 4 + (i * 2 + kp) * 4) // 4, up_logits_local, (i * 4 * 4 + j * 4) // 4)
                T.tvm_storage_sync("shared")
                if k_pair + 1 < 56:
                    T.maca_async_copy(T.region(routed_expert_gate[cur_group_idx, by * 64, (k_odd + 2) * 64], 1, 1, 64, 64), T.region(routed_expert_gate_shared_1_1[0, 0], 2, 64, 64), barrier=step1_gate_barrier_1[0])
                    T.maca_async_copy(T.region(routed_expert_up[cur_group_idx, by * 64, (k_odd + 2) * 64], 1, 1, 64, 64), T.region(routed_expert_up_shared_1_1[0, 0], 2, 64, 64), barrier=step1_up_barrier_1[0])
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
        T.reads(group_idx_for_bx[bx], group_sizes[group_idx_for_bx[bx]], group_padded_offsets[group_idx_for_bx[bx]], group_offsets[group_idx_for_bx[bx]], routed_expert_down[group_idx_for_bx[bx], by * 128, 0:1985], up_logits[bx * 128 + group_offsets[group_idx_for_bx[bx]] - group_padded_offsets[group_idx_for_bx[bx]], 0:1985], routed_expert_weights[bx * 128 + tx // 64 * 32 + group_offsets[group_idx_for_bx[bx]] + tx % 16 - group_padded_offsets[group_idx_for_bx[bx]]:bx * 128 + tx // 64 * 32 + group_offsets[group_idx_for_bx[bx]] + tx % 16 - group_padded_offsets[group_idx_for_bx[bx]] + 17])
        T.writes(output[bx * 128 + group_offsets[group_idx_for_bx[bx]] - group_padded_offsets[group_idx_for_bx[bx]]:bx * 128 + group_offsets[group_idx_for_bx[bx]] - group_padded_offsets[group_idx_for_bx[bx]] + 128, by * 128:by * 128 + 128])
        up_logits_shared = T.handle("float16", "local.fragment")
        routed_expert_down_shared_0 = T.handle("float16", "shared.dyn")
        routed_expert_down_shared_1 = T.handle("float16", "shared.dyn")
        output_local = T.handle("float32", "local.fragment")
        T.block_attr({"layout_map": {up_logits_shared: metadata["tl.Fragment"][3], routed_expert_down_shared_0: metadata["tl.Layout"][1], routed_expert_down_shared_1: metadata["tl.Layout"][1], output_local: metadata["tl.Fragment"][4]}})
        up_logits_shared_1 = T.alloc_buffer((128, 64), "float16", data=up_logits_shared, scope="local.fragment")
        routed_expert_down_shared_0_1 = T.alloc_buffer((128, 64), "float16", data=routed_expert_down_shared_0, scope="shared.dyn")
        routed_expert_down_shared_1_1 = T.alloc_buffer((128, 64), "float16", data=routed_expert_down_shared_1, scope="shared.dyn")
        step2_weight_barrier_0 = T.alloc_buffer((1,), "void", scope="local.barrier")
        step2_weight_barrier_1 = T.alloc_buffer((1,), "void", scope="local.barrier")
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
        T.maca_async_copy(T.region(routed_expert_down[cur_group_idx, by * 128, 0], 1, 1, 128, 64), T.region(routed_expert_down_shared_0_1[0, 0], 2, 128, 64), barrier=step2_weight_barrier_0[0])
        T.maca_async_copy(T.region(routed_expert_down[cur_group_idx, by * 128, 64], 1, 1, 128, 64), T.region(routed_expert_down_shared_1_1[0, 0], 2, 128, 64), barrier=step2_weight_barrier_1[0])
        for k_pair in range(16):
            k_even: T.int32 = 2 * k_pair
            k_odd: T.int32 = k_even + 1
            T.copy(T.region(up_logits[m_start, k_even * 64], 1, 128, 64), T.region(up_logits_shared_1[0, 0], 2, 128, 64))
            T.maca_barrier_arrive_and_wait(step2_weight_barrier_0[0])
            T.tvm_storage_sync("shared")
            for ki in range(2):
                tx_1: T.int32 = tx % 64
                _: T.int32 = tx // 64 % 4
                for j in range(8):
                    for local_id in T.vectorized(8):
                        row: T.int32 = tx_1 % 16
                        col: T.int32 = tx_1 // 16 * 8 + local_id
                        l: T.int32 = j * 16
                        r: T.int32 = ki * 32
                        down_weight_local[j * 2 * 4 + local_id] = routed_expert_down_shared_0_1[l + row, r + col]
                for kp, i, j in T.grid(2, 2, 8):
                    T.tvm_mfma("16x16x16f16", "row", "row", "float16x4", "float16x4", "float32x4", down_weight_local.data, (j * 2 + kp) * 4 // 4, up_logits_shared, (ki * 2 * 2 * 4 + (i * 2 + kp) * 4) // 4, output_local, (i * 8 * 4 + j * 4) // 4)
            T.tvm_storage_sync("shared")
            if k_pair + 1 < 16:
                T.maca_async_copy(T.region(routed_expert_down[cur_group_idx, by * 128, (k_even + 2) * 64], 1, 1, 128, 64), T.region(routed_expert_down_shared_0_1[0, 0], 2, 128, 64), barrier=step2_weight_barrier_0[0])
            T.copy(T.region(up_logits[m_start, k_odd * 64], 1, 128, 64), T.region(up_logits_shared_1[0, 0], 2, 128, 64))
            T.maca_barrier_arrive_and_wait(step2_weight_barrier_1[0])
            T.tvm_storage_sync("shared")
            for ki in range(2):
                tx_1: T.int32 = tx % 64
                _: T.int32 = tx // 64 % 4
                for j in range(8):
                    for local_id in T.vectorized(8):
                        row: T.int32 = tx_1 % 16
                        col: T.int32 = tx_1 // 16 * 8 + local_id
                        l: T.int32 = j * 16
                        r: T.int32 = ki * 32
                        down_weight_local[j * 2 * 4 + local_id] = routed_expert_down_shared_1_1[l + row, r + col]
                for kp, i, j in T.grid(2, 2, 8):
                    T.tvm_mfma("16x16x16f16", "row", "row", "float16x4", "float16x4", "float32x4", down_weight_local.data, (j * 2 + kp) * 4 // 4, up_logits_shared, (ki * 2 * 2 * 4 + (i * 2 + kp) * 4) // 4, output_local, (i * 8 * 4 + j * 4) // 4)
            T.tvm_storage_sync("shared")
            if k_pair + 1 < 16:
                T.maca_async_copy(T.region(routed_expert_down[cur_group_idx, by * 128, (k_odd + 2) * 64], 1, 1, 128, 64), T.region(routed_expert_down_shared_1_1[0, 0], 2, 128, 64), barrier=step2_weight_barrier_1[0])
        for row_slot in range(2):
            routed_row: T.int32 = tx // 64 * 32 + row_slot * 16 + tx % 16
            routed_weight_local[row_slot] = T.float16(0.0)
            if routed_row < actual_rows:
                routed_weight_local[row_slot] = routed_expert_weights[m_start + routed_row]
        for i in T.parallel(128):
            for j in T.parallel(128):
                if i < actual_rows:
                    output[m_start + i, by * 128 + j] = T.Cast("float16", output_local_1[i, j] * T.Cast("float32", routed_weight_local[i // 16 % 2]))
