--#region Model

RealityInfo = {
  Dimensions = 2,
  Name = 'CaveWorldLand',
  ['Render-With'] = '2D-Tile-0',
}

RealityParameters = {
  ['2D-Tile-0'] = {
    Version = 0,
    -- PlayerSpriteTxId = 'njU06ZNozJgm0D_nGSmt7xC6LGA0IG4XjmRfAiGO2mw',
    --Spawn = { 80, 8 },
    Tileset = {
      Type = 'Fixed',
      Format = 'PNG',
      TxId = 'TT6OpuT4q1t_bxoFfuFXoVrx1RRTdj0rZwW3pBm5XVI', -- TxId of the tileset in PNG format
    },
    -- This is a tilemap of sample small island
    Tilemap = {
      Type = 'Fixed',
      Format = 'TMJ',
      TxId = 'xKRkvdYX5eqcd7JUrwl2zyrT7Uhcw9BcrG8M2mpHDRI', -- TxId of the tilemap in TMJ format
      -- Since we are already setting the spawn in the middle, we don't need this
      Offset = { -25, -25 },
    },
  },
    ['Audio-0'] =  {
      Bgm = {
        Type = 'Fixed',
        Format = 'WAV' ,
        TxId = "w595qhLtFf-U9AcOl8STmF6xHUWnYMDjX1-041Flm0k",
      }
    }
 
}

RealityEntitiesStatic = {
  ['Cave_Exit'] = {
    Position = { 40, 4 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Exit',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "lA4WPP5v9iUowzLJtCjZsSH_m6WV2FUbGlPSlG7KbnM",
        Position = { 52, 3 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['Cave_Exit2'] = {
    Position = { 27, 3 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Exit',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "lA4WPP5v9iUowzLJtCjZsSH_m6WV2FUbGlPSlG7KbnM",
        Position = { 52, 3 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['Cave_Exit3'] = {
    Position = { 8, 37 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Exit',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "lA4WPP5v9iUowzLJtCjZsSH_m6WV2FUbGlPSlG7KbnM",
        Position = { 52, 3 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['Cave_OneWay1'] = {
    Position = { 38, 21 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = '',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8",
        Position = { 38, 13 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },


  ['Cave_Path1-2'] = {
    Position = { 19, 39 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = '1-2',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8",
        Position = { 4, 33 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['Cave_Path2-1'] = {
    Position = { 4, 32 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = '2-1',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8",
        Position = { 19, 40 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },

  ['Cave_Path3-4'] = {
    Position = { 43, 21 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = '3-4',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8",
        Position = { 44, 46 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['Cave_Path4-3'] = {
    Position = { 45, 45 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = '4-3',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8",
        Position = { 43, 22 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['Cave_Path5-6'] = {
    Position = { 30, 8 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = '5-6',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8",
        Position = { 34, 25 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['Cave_Path6-5'] = {
    Position = { 34, 24 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = '6-5',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8",
        Position = { 30, 9 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['Cave_Path7-8'] = {
    Position = { 14, 30 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = '7-8',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8",
        Position = { 14, 7 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['Cave_Path8-7'] = {
    Position = { 14, 6 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = '8-7',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8",
        Position = { 14, 31 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['Cave_Path9-10'] = {
    Position = { 7, 20 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = '9-10',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8",
        Position = { -4, 14 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['Cave_Path10-9'] = {
    Position = { -4, 13 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = '10-9',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8",
        Position = { 7, 21 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['Cave_Path11-12'] = {
    Position = { 22, 19 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = '11-12',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8",
        Position = { 3, 2 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['Cave_Path12-11'] = {
    Position = { 3, 1 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = '12-11',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8",
        Position = { 22, 20  },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },





  ['pond1'] = {
    Position = { 12.25, 12 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' 1',
      -- Fish circling
      SpriteTxId = 'dwkIwPs0ItgsVHWxm-GEbIjhntI1lY8R1ie6PaS9TxY',
    },
  },

  ['pond2'] = {
    Position = { 20.25, 21.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' 2',
      -- Fish circling
      SpriteTxId = 'i3J4FVGS03TdPwj7Hqf_o0yrCvrIh-oRwY0HiqWu7DA',
    },
  },

  ['pond3'] = {
    Position = { 6.5,  44.5},
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' 3',
      -- Fish circling
      SpriteTxId = 'i3J4FVGS03TdPwj7Hqf_o0yrCvrIh-oRwY0HiqWu7DA',
    },
  },
  ['pond4'] = {
    Position = { 35.25,  31},
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' 4',
      -- Fish circling
      SpriteTxId = 'i3J4FVGS03TdPwj7Hqf_o0yrCvrIh-oRwY0HiqWu7DA',
    },
  },
  ['pond5'] = {
    Position = { 38.25,  28.5},
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' 5',
      -- Fish circling
      SpriteTxId = 'dwkIwPs0ItgsVHWxm-GEbIjhntI1lY8R1ie6PaS9TxY',
    },
  },
  ['pond6'] = {
    Position = { -0.5, 10},
    Type = 'Avatar',
    Metadata = {
      DisplayName = '6',
      -- Fish circling
      SpriteTxId = 'dwkIwPs0ItgsVHWxm-GEbIjhntI1lY8R1ie6PaS9TxY',
    },
  },
  ['pond7'] = {
    Position = { -0.5, 8},
    Type = 'Avatar',
    Metadata = {
      DisplayName = '7',
      -- Fish circling
      SpriteTxId = 'dwkIwPs0ItgsVHWxm-GEbIjhntI1lY8R1ie6PaS9TxY',
    },
  },
  ['pond8'] = {
    Position = { -0.5, 6},
    Type = 'Avatar',
    Metadata = {
      DisplayName = '8',
      -- Fish circling
      SpriteTxId = 'dwkIwPs0ItgsVHWxm-GEbIjhntI1lY8R1ie6PaS9TxY',
    },
  },
  ['pond9'] = {
    Position = { -0.5, 4},
    Type = 'Avatar',
    Metadata = {
      DisplayName = '9',
      -- Fish circling
      SpriteTxId = 'dwkIwPs0ItgsVHWxm-GEbIjhntI1lY8R1ie6PaS9TxY',
    },
  },



  ['Oi8VXInI_3rmpmM7Xr5BAqieNu3Q57FBSA9FB1GIU3U'] = {
    Position = { 46.5, 47.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Llama wif hat
      SpriteTxId = 'lnP_0Bz-XAj-yUbNtUzM5whZ6DF7geESDIyNHuRLZv0',
      Interaction = {
        Type = 'SchemaForm',
        Id = 'CastRod'
      },
    },
  },
  

}

--#endregion

return print("Cave World Reality Template Loaded....")
