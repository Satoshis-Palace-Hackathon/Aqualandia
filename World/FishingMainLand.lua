--#region Model

RealityInfo = {
  Dimensions = 2,
  Name = 'Aqualandia',
  ['Render-With'] = '2D-Tile-0',
}

RealityParameters = {
  ['2D-Tile-0'] = {
    Version = 0,
    PlayerSpriteTxId = 'njU06ZNozJgm0D_nGSmt7xC6LGA0IG4XjmRfAiGO2mw',
    Spawn = { 3.5, 9.5 },
    -- This is a tileset themed to Llama Land main island
    Tileset = {
      Type = 'Fixed',
      Format = 'PNG',
      TxId = 'q1HKLYZKUypkwZELzbh_WTA1YL__I8bta9FhLDDzhQ8', -- TxId of the tileset in PNG format
    },
    -- This is a tilemap of sample small island
    Tilemap = {
      Type = 'Fixed',
      Format = 'TMJ',
      TxId = 'FM-cWvRmlH0fG44hJW2qhrC62eaDfc0kq18Nh8ckQkg', -- TxId of the tilemap in TMJ format
      -- Since we are already setting the spawn in the middle, we don't need this
      Offset = { -20, -20 },
    },
  },
  ['Audio-0'] =  {
    Bgm = {
      Type = 'Fixed',
      Format = 'WAV' ,
      TxId = "srhHoZK4IcpRLDAmjMNFnh6_5MlI2jX4AoXZznRLuh4",
    }
  }
}

RealityEntitiesStatic = {
  -- Fisher King, gives out casts and bait
  ['M7njeaA88ynBogxsjQsyrT2Y_G51hcru1Kil4f0u8gg'] = {
    Position = { 7.5, 5.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Fisher King',
      -- Llama wif hat
      SpriteTxId = 'x6G3jGiikxQgRs2sq5WyoEsrZREyhiPi9eoaXPx9Jj4',
      Interaction = {
        Type = 'SchemaExternalForm',
        Id = 'Enroll'
      },
    },
  },

  -- Fish Mongers
  ['d9EGNuMZKOjhBLeL-7vqEfhW_Bm0mljUs5UcemAVfPA'] = {
    Position = { 22.75, 4.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Common Fish',
      SkinNumber = 5,
      Interaction = {
        Type = 'SchemaExternalForm',
        Id = 'Redeem'
      },
    },
  },
    ['0Rx30TBCPfv2uHdGwDRHVlYW3UW8zbINmCP9wR5et04'] = {
      Position = { 25.5, 4.5 },
      Type = 'Avatar',
      Metadata = {
        DisplayName = 'Rare Fish',
        SkinNumber = 5,
        Interaction = {
          Type = 'SchemaExternalForm',
          Id = 'Redeem'
        },
      },
    },
  ['uETN56nhYjm-uXeO81VwvXMekwAvi1bZdpNmz6xWPO8'] = {
    Position = { 28, 4.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Legendary Fish',
      SkinNumber = 5,
      Interaction = {
        Type = 'SchemaExternalForm',
        Id = 'Redeem'
      },
    },
  },




  ['Non_Working_ROD'] = {
    Position = { 18.5, 16 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Llama wif hat
      SpriteTxId = 'gTMZ9OfZFrpcLpbcnvx2AF7lMLwjtaHs7ZWWsV6RVXU',

    },
  },
  ['v6t71b7mKvomUF1jNdoqQseOmpC0_0efj21g1KCteNQ'] = {
    Position = { 8.5, 7.5 },
    Type = 'Avatar',
    --Barrel
    Metadata = {
      DisplayName = ' ',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Type = 'Default',
      },
    },
  },
----------------------------------

  ['pond1'] = {
    Position = { 16, 10 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Fish 1 SHALLOW
      SpriteTxId = 'dwkIwPs0ItgsVHWxm-GEbIjhntI1lY8R1ie6PaS9TxY',
    },
  },
  ['LIjguST4K8Dwgm0N2sx4d0RWOVwBbI0GGTs1uqhu4-A'] = {
    Position = { 15.5, 9.5 },
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
-----------------------------------------------------
  ['pond2'] = {
    Position = { 51, 17 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Fish 2 DEEP
      SpriteTxId = 'mkpyMB3JDOfCfslpDIDvmp2uARI4rzHm2RQ9z97mGHQ',
    },
  },
  ['JUv_7pYwKW_PobNDW4qaPZpMGt9dyzPsdaeKLxNfw8E'] = {
    Position = { 51.5, 16.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 2 DEEP
      SpriteTxId = 'gTMZ9OfZFrpcLpbcnvx2AF7lMLwjtaHs7ZWWsV6RVXU',
      Interaction = {
        Type = 'Default',
      },
    },
  },
------------------------------------------------------------------------
  ['pond3'] = {
    Position = { 31, 14 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Fish 3 JUNK
      SpriteTxId = 'f-D8Kk8y0lgUJXSbcxUfdvE3JodamaH-XqdX_3jUHKY',
    },
  },
  ['iURrMZYwQZTa2SBzG9kKyLUiKKx0h7bij-cJFcgTTYQ'] = {
    Position = { 30.5, 13.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 3 JUNK
      SpriteTxId = 'lnP_0Bz-XAj-yUbNtUzM5whZ6DF7geESDIyNHuRLZv0',
      Interaction = {
        Type = 'Default',
      },
    },
  },
----------------------------------------------------------------------
  ['pond4'] = {
    Position = { 21.5, 15.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Fish 4 SHALLOW
      SpriteTxId = 'i3J4FVGS03TdPwj7Hqf_o0yrCvrIh-oRwY0HiqWu7DA',
    },
  },
  ['1t1rq8D5yTVuBgOuF4Hp1O2K4mdUfmR0sGHVFfkal9c'] = {
    Position = { 21, 15 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 4 SHALLOW
      SpriteTxId = 'lnP_0Bz-XAj-yUbNtUzM5whZ6DF7geESDIyNHuRLZv0',
      Interaction = {
        Type = 'Default',
      },
    },
  },
  -----------------------------------------------
  ['pond5'] = {
    Position = { 32, 23 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Fish 5 DEEP
      SpriteTxId = 'mkpyMB3JDOfCfslpDIDvmp2uARI4rzHm2RQ9z97mGHQ',
    },
  },
  ['YYP7Zkr1s-w534LUBY2kJPnHKJBDqUFq9Y4FPPWRWRU'] = {
    Position = { 31.5, 22.5 },
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
  --------------------------------------------
  ['pond6'] = {
    Position = { 4, 32 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Fish 6 DEEP
      SpriteTxId = 'mkpyMB3JDOfCfslpDIDvmp2uARI4rzHm2RQ9z97mGHQ',
    },
  },
  ['SyoMsssRvuedVPdpYOyFDzSebGqAxX3GkwNAxkl4aG0'] = {
    Position = { 4.5, 31.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 6 DEEP
      SpriteTxId = 'gTMZ9OfZFrpcLpbcnvx2AF7lMLwjtaHs7ZWWsV6RVXU',
      Interaction = {
        Type = 'Default',
      },
    },
  },
  -----------------------------------
  ['pond7'] = {
    Position = { 52, 33 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Fish 7 JUNK
      SpriteTxId = 'f-D8Kk8y0lgUJXSbcxUfdvE3JodamaH-XqdX_3jUHKY',
    },
  },
  ['6uUu5ovvGzQrqXmHoIGgs5m_IN7_qV4WRHIFGnvSHvk'] = {
    Position = { 51.5, 32.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 7 JUNK
      SpriteTxId = 'lnP_0Bz-XAj-yUbNtUzM5whZ6DF7geESDIyNHuRLZv0',
      Interaction = {
        Type = 'Default',
      },
    },
  },
  ----------------------------
  ['pond8'] = {
    Position = { 54,22.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Fish 8 SHALLOW
      SpriteTxId = 'i3J4FVGS03TdPwj7Hqf_o0yrCvrIh-oRwY0HiqWu7DA',
    },
  },
  ['gm9hLIm3kyWw_Itt1Ub494lFStZoUbOAeZreDfOR2t8'] = {
    Position = { 54.5, 22 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 8 SHALLOW
      SpriteTxId = 'gTMZ9OfZFrpcLpbcnvx2AF7lMLwjtaHs7ZWWsV6RVXU',
      Interaction = {
        Type = 'Default',
      },
    },
  },
  -------------
  ['pond9'] = {
    Position = { 37,35 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Fish 9 SECRET
      SpriteTxId = 'nmw_2CVEaLrN6AYBmEWKOl3rLN0ZhndDlw8zCkS0tYs',
    },
  },
  ['qm42I2DnuXg62dfhJ4nmRDCCLQttCGMcMdlTazqH748'] = {
    Position = { 36.5, 34.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      -- Rod 9 SECRET
      SpriteTxId = 'lnP_0Bz-XAj-yUbNtUzM5whZ6DF7geESDIyNHuRLZv0',
      Interaction = {
        Type = 'Default',
      },
    },
  },
  -----------------------------



  ['Bouncer2'] = {
    Position = { -4.8, 28 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = "Bouncer",
      SkinNumber = 9,
    },
  },
  ['Bouncer1'] = {
    Position = { -4.8, 29 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = "Bouncer",
      SkinNumber = 9,
    },
  },



  ['LlamaLand_WARP'] = {
    Position = { 1, 9.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Llama Land',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "9a_YP6M7iN7b6QUoSvpoV3oe3CqxosyuJnraCucy5ss",
        Position = { 10,10 },
        Type = 'Warp',
        Size = { 3, 3 }
      },
    }
  },
  ['House1-2'] = {
    Position = { 16.5, 3.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "lA4WPP5v9iUowzLJtCjZsSH_m6WV2FUbGlPSlG7KbnM",
        Position = { 6.5, 22 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['House2-3'] = {
    Position = { 6.5, 20.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "lA4WPP5v9iUowzLJtCjZsSH_m6WV2FUbGlPSlG7KbnM",
        Position = { 41, 29.5 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['House3-4'] = {
    Position = { 41, 28.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "lA4WPP5v9iUowzLJtCjZsSH_m6WV2FUbGlPSlG7KbnM",
        Position = { 45.5, 6.5 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['House4-1'] = {
    Position = { 45.5, 5.6},
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "lA4WPP5v9iUowzLJtCjZsSH_m6WV2FUbGlPSlG7KbnM",
        Position = { 16.5, 4.5 },
        Type = 'Warp',
        Size = { 1, 1 }
      },
    }
  },
  ['Cave_Enter'] = {
    Position = { 54, 3.5 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = ' ',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "pQhB05m4Qy4A9y--AsU36qQjyjhEfq-qeKvQwu3sBU8",
        Position = { 40 , 5 },
        Type = 'Warp',
        Size = { 2, 2 }
      },
    }
  },
  ['Island_Enter'] = {
    Position = { 62, 24 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Cove Island',
      SpriteTxId = '3fcdEtusdRjspICvaIi8lsF4LYVCViN0QYvkU_qXn5s',
      Interaction = {
        Target = "vZ6365nynBeP2drawARMfXubtJDRAEihGdvmOPal-jg",
        Position = { 20 , 20 },
        Type = 'Warp',
        Size = { 2, 2 }
      },
    }
  },


}

--#endregion

return print("Test World Reality Template Loaded....")
