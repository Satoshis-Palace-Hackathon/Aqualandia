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
      DisplayName = '',
      -- Fish 1 SHALLOW
      SpriteTxId = 'dwkIwPs0ItgsVHWxm-GEbIjhntI1lY8R1ie6PaS9TxY',
    },
  },
  ['wa3tPM8CO3Z1-gLSZ0eENx9TFFF0wGQE0SMb8Fa_Ie0'] = {
    Position = { 12, 11.75 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 1 SHALLOW
      SpriteTxId = 'lnP_0Bz-XAj-yUbNtUzM5whZ6DF7geESDIyNHuRLZv0',
      Interaction = {
        Type = 'Default',
      },
    },
  },
  ------------
  ['pond2'] = {
    Position = { 20.25, 21.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = '',
      -- Fish 2 SHALLOW
      SpriteTxId = 'i3J4FVGS03TdPwj7Hqf_o0yrCvrIh-oRwY0HiqWu7DA',
    },
  },
  ['ef7p8FkwZ0le6_kUnekxQUtVOXYyEjHMC1sTK0ZnNvs'] = {
    Position = { 20, 21.25 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 2 SHALLOW
      SpriteTxId = 'lnP_0Bz-XAj-yUbNtUzM5whZ6DF7geESDIyNHuRLZv0',
      Interaction = {
        Type = 'Default',
      },
    },
  },
  -------------
  ['pond3'] = {
    Position = { 6.5,  44.5},
    Type = 'Avatar',
    Metadata = {
      DisplayName = '',
      -- Fish 3 JUNK
      SpriteTxId = 'f-D8Kk8y0lgUJXSbcxUfdvE3JodamaH-XqdX_3jUHKY',
    },
  },
  ['2H4Oz7MNblRNF_8Yry9d6axzHE5czmPSER1FJXA1gBY'] = {
    Position = { 6.25,  44.25 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 3 JUNK
      SpriteTxId = 'gTMZ9OfZFrpcLpbcnvx2AF7lMLwjtaHs7ZWWsV6RVXU',
      Interaction = {
        Type = 'Default',
      },
    },
  },
  -----------------------
  ['pond4'] = {
    Position = { 35.25,  31},
    Type = 'Avatar',
    Metadata = {
      DisplayName = '',
      -- Fish 4 DEEP
      SpriteTxId = 'mkpyMB3JDOfCfslpDIDvmp2uARI4rzHm2RQ9z97mGHQ',
    },
  },
  ['ErfEVVzX492fXFDD7J0pUs3cznGHmTlsugb85fON0hU'] = {
    Position = { 35,  30.75 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 4 DEEP
      SpriteTxId = 'lnP_0Bz-XAj-yUbNtUzM5whZ6DF7geESDIyNHuRLZv0',
      Interaction = {
        Type = 'Default',
      },
    },
  },
  ---------------------------
  ['pond5'] = {
    Position = { 38.25,  28.5},
    Type = 'Avatar',
    Metadata = {
      DisplayName = '',
      -- Fish 5 DEEP
      SpriteTxId = 'mkpyMB3JDOfCfslpDIDvmp2uARI4rzHm2RQ9z97mGHQ',
    },
  },
  ['53qjYPNoluKzBFNd3j2oABrNM48jW4xvsfwtLcwcEGo'] = {
    Position = { 38,  28.25 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 5 DEEP
      SpriteTxId = 'lnP_0Bz-XAj-yUbNtUzM5whZ6DF7geESDIyNHuRLZv0',
      Interaction = {
        Type = 'Default',
      },
    },
  },
  --------------------------------------
  ['pond6'] = {
    Position = { -0.5, 10},
    Type = 'Avatar',
    Metadata = {
      DisplayName = '',
      -- Fish 6 SHALLOW
      SpriteTxId = 'dwkIwPs0ItgsVHWxm-GEbIjhntI1lY8R1ie6PaS9TxY',
    },
  },
  ['OELBWwZPZrwe_Pfog_HtXkHZE2E0iQGukLTqfQ0cOy4'] = {
    Position = { -0.25, 9.75 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 6 SHALLOW
      SpriteTxId = 'gTMZ9OfZFrpcLpbcnvx2AF7lMLwjtaHs7ZWWsV6RVXU',
      Interaction = {
        Type = 'Default',
      },
    },
  },
  ---------------------------------------
  ['pond7'] = {
    Position = { -0.5, 8},
    Type = 'Avatar',
    Metadata = {
      DisplayName = '',
      -- Fish 7 DEEP
      SpriteTxId = 'mkpyMB3JDOfCfslpDIDvmp2uARI4rzHm2RQ9z97mGHQ',
    },
  },
  ['GKuCN4MxMqrhQ16Yc2HO-SDN9_FbWF4iGNbFYs-_QJk'] = {
    Position = { -0.25, 7.75 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 7 DEEP
      SpriteTxId = 'gTMZ9OfZFrpcLpbcnvx2AF7lMLwjtaHs7ZWWsV6RVXU',
      Interaction = {
        Type = 'Default',
      },
    },
  },
  --------------------------------------
  ['pond8'] = {
    Position = { -0.5, 6},
    Type = 'Avatar',
    Metadata = {
      DisplayName = '',
      -- Fish 8 SECRET
      SpriteTxId = 'nmw_2CVEaLrN6AYBmEWKOl3rLN0ZhndDlw8zCkS0tYs',
    },
  },
  ['DevQDvzl3ktWHiuJsaWKDHjXp_xfJt_JzUH4Rhw3ms4'] = {
    Position = { -0.25, 5.75},
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 8 SECRET
      SpriteTxId = 'gTMZ9OfZFrpcLpbcnvx2AF7lMLwjtaHs7ZWWsV6RVXU',
      Interaction = {
        Type = 'Default',
      },
    },
  },
  -----------------------------
  ['pond9'] = {
    Position = { -0.5, 4},
    Type = 'Avatar',
    Metadata = {
      DisplayName = '',
      -- Fish 9 JUNK
      SpriteTxId = 'f-D8Kk8y0lgUJXSbcxUfdvE3JodamaH-XqdX_3jUHKY',
    },
  },
  ['t1I1ZJt1a3WIi6RHlWItbxMD13rZb8UnYrH5YoiRGcY'] = {
    Position = { -0.25, 3.75 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 9 JUNK
      SpriteTxId = 'gTMZ9OfZFrpcLpbcnvx2AF7lMLwjtaHs7ZWWsV6RVXU',
      Interaction = {
        Type = 'Default',
      },
    },
  },


  ['haiiGM7ilBsPBJDwcBGUKRr7Q3Fr5KF3KZVejBDon_E'] = {
    Position = { 46.25, 47.25 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Llama wif hat
      SpriteTxId = 'lnP_0Bz-XAj-yUbNtUzM5whZ6DF7geESDIyNHuRLZv0',
      Interaction = {
        Type = 'Default',
      },
    },
  },
  

}

--#endregion

return print("Cave World Reality Template Loaded....")
