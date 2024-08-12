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
      TxId = 'aiydj9Wq2bLlY04zMGKYTSfg6nm0UzBtP8B_8YRcqv8', -- TxId of the tilemap in TMJ format
      -- Since we are already setting the spawn in the middle, we don't need this
      Offset = { -25, -25 },
    },
  },
    ['Audio-0'] =  {
      Bgm = {
        Type = 'Fixed',
        Format = 'WAV' ,
        TxId = "5VybmOqwZ6IVboswnPxZjlhnpny79qgQnkpOsS1B01M",
      }
    }
 
}

RealityEntitiesStatic = {
  
}

--#endregion

return print("Island World Reality Template Loaded....")
