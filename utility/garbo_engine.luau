g_timeout = 30
g_maxfinCnt = 100000
g_startTime = 0
g_finCnt = 0
g_foundmove = 0
g_foundvalue = 0
colorBlack = 16
colorWhite = 8
pieceEmpty = 0
piecePawn = 1
pieceKnight = 2
pieceBishop = 3
pieceRook = 4
pieceQueen = 5
pieceKing = 6
g_vectorDelta = {}
g_bishopDeltas = {
    -15,
    -17,
    15,
    17
}
g_knightDeltas = {
    31,
    33,
    14,
    -14,
    -31,
    -33,
    18,
    -18
}
g_rookDeltas = {
    -1,
    1,
    -16,
    16
}
g_queenDeltas = {
    -1,
    1,
    -15,
    15,
    -17,
    17,
    -16,
    16
}
g_seeValues = {
    0,
    1,
    3,
    3,
    5,
    9,
    900,
    0,
    0,
    1,
    3,
    3,
    5,
    9,
    900,
    0
}
g_castleRightsMask = {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    7,
    15,
    15,
    15,
    3,
    15,
    15,
    11,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    15,
    15,
    15,
    15,
    15,
    15,
    15,
    15,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    15,
    15,
    15,
    15,
    15,
    15,
    15,
    15,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    15,
    15,
    15,
    15,
    15,
    15,
    15,
    15,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    15,
    15,
    15,
    15,
    15,
    15,
    15,
    15,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    15,
    15,
    15,
    15,
    15,
    15,
    15,
    15,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    15,
    15,
    15,
    15,
    15,
    15,
    15,
    15,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    13,
    15,
    15,
    15,
    12,
    15,
    15,
    14,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
}
moveflagEPC = 131072
moveflagCastleKing = 262144
moveflagCastleQueen = 524288
moveflagPromotion = 1048576
moveflagPromoteKnight = 2097152
moveflagPromoteQueen = 4194304
moveflagPromoteBishop = 8388608
g_board = {}
g_toMove = 0
g_castleRights = 0
g_enPassentSquare = 0
g_baseEval = 0
g_hashKeyLow = 0
g_hashKeyHigh = 0
g_inCheck = false
g_moveCount = 0
g_moveUndoStack = {}
g_move50 = 0
g_repMoveStack = {}
g_hashSize = 4194304
g_hashMask = g_hashSize - 1
g_hashTable = {}
g_killers = 0
historyTable = {}
g_zobristLow = {}
g_zobristHigh = {}
g_zobristBlackLow = 0
g_zobristBlackHigh = 0
g_mobUnit = {}
hashflagAlpha = 1
hashflagBeta = 2
hashflagExact = 3
g_nodeCount = 0
g_qNodeCount = 0
g_searchValid = true
g_globalPly = 0
minEval = -2000000
maxEval = 2000000
minMateBuffer = minEval + 2000
maxMateBuffer = maxEval - 2000
materialTable = {
    0,
    800,
    3350,
    3450,
    5000,
    9750,
    600000
}
pawnAdj = {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    -25,
    105,
    135,
    270,
    270,
    135,
    105,
    -25,
    -80,
    0,
    30,
    176,
    176,
    30,
    0,
    -80,
    -85,
    -5,
    25,
    175,
    175,
    25,
    -5,
    -85,
    -90,
    -10,
    20,
    125,
    125,
    20,
    -10,
    -90,
    -95,
    -15,
    15,
    75,
    75,
    15,
    -15,
    -95,
    -100,
    -20,
    10,
    70,
    70,
    10,
    -20,
    -100,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
}
knightAdj = {
    -200,
    -100,
    -50,
    -50,
    -50,
    -50,
    -100,
    -200,
    -100,
    0,
    0,
    0,
    0,
    0,
    0,
    -100,
    -50,
    0,
    60,
    60,
    60,
    60,
    0,
    -50,
    -50,
    0,
    30,
    60,
    60,
    30,
    0,
    -50,
    -50,
    0,
    30,
    60,
    60,
    30,
    0,
    -50,
    -50,
    0,
    30,
    30,
    30,
    30,
    0,
    -50,
    -100,
    0,
    0,
    0,
    0,
    0,
    0,
    -100,
    -200,
    -50,
    -25,
    -25,
    -25,
    -25,
    -50,
    -200
}
bishopAdj = {
    -50,
    -50,
    -25,
    -10,
    -10,
    -25,
    -50,
    -50,
    -50,
    -25,
    -10,
    0,
    0,
    -10,
    -25,
    -50,
    -25,
    -10,
    0,
    25,
    25,
    0,
    -10,
    -25,
    -10,
    0,
    25,
    40,
    40,
    25,
    0,
    -10,
    -10,
    0,
    25,
    40,
    40,
    25,
    0,
    -10,
    -25,
    -10,
    0,
    25,
    25,
    0,
    -10,
    -25,
    -50,
    -25,
    -10,
    0,
    0,
    -10,
    -25,
    -50,
    -50,
    -50,
    -25,
    -10,
    -10,
    -25,
    -50,
    -50
}
rookAdj = {
    -60,
    -30,
    -10,
    20,
    20,
    -10,
    -30,
    -60,
    40,
    70,
    90,
    120,
    120,
    90,
    70,
    40,
    -60,
    -30,
    -10,
    20,
    20,
    -10,
    -30,
    -60,
    -60,
    -30,
    -10,
    20,
    20,
    -10,
    -30,
    -60,
    -60,
    -30,
    -10,
    20,
    20,
    -10,
    -30,
    -60,
    -60,
    -30,
    -10,
    20,
    20,
    -10,
    -30,
    -60,
    -60,
    -30,
    -10,
    20,
    20,
    -10,
    -30,
    -60,
    -60,
    -30,
    -10,
    20,
    20,
    -10,
    -30,
    -60
}
kingAdj = {
    50,
    150,
    -25,
    -125,
    -125,
    -25,
    150,
    50,
    50,
    150,
    -25,
    -125,
    -125,
    -25,
    150,
    50,
    50,
    150,
    -25,
    -125,
    -125,
    -25,
    150,
    50,
    50,
    150,
    -25,
    -125,
    -125,
    -25,
    150,
    50,
    50,
    150,
    -25,
    -125,
    -125,
    -25,
    150,
    50,
    50,
    150,
    -25,
    -125,
    -125,
    -25,
    150,
    50,
    50,
    150,
    -25,
    -125,
    -125,
    -25,
    150,
    50,
    150,
    250,
    75,
    -25,
    -25,
    75,
    250,
    150
}
emptyAdj = {
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0
}
pieceSquareAdj = {}
flipTable = {}
g_pieceIndex = {}
g_pieceList = {}
g_pieceCount = {}
PieceCharList = {
    " ",
    "p",
    "n",
    "b",
    "r",
    "q",
    "k",
    " "
}
FormatSquare = function(p1) --[[ Name: FormatSquare ]] --[[ Line: 201 ]]
    return string.char(bit32.band(p1, 15) + 97 - 4) .. string.format("%d", 9 - bit32.rshift(p1, 4) + 1);
end;
deFormatSquare = function(p2) --[[ Name: deFormatSquare ]] --[[ Line: 207 ]]
    return bit32.bor(string.byte(p2, 1) - 97 + 4, (bit32.lshift(9 - (string.byte(p2, 2) - 48 - 1), 4)));
end;
iif = function(p3, p4, p5) --[[ Name: iif ]] --[[ Line: 217 ]]
    if p3 then
        return p4;
    else
        return p5;
    end;
end;
GetFen = function() --[[ Name: GetFen ]] --[[ Line: 225 ]]
    local v6 = 0
    local v7 = ""
    while v6 < 8 do
        if v6 ~= 0 then
            v7 = v7 .. "/"
        end;
        local v8 = 0
        local v9 = 0
        while v8 < 8 do
            local v10 = g_board[bit32.lshift(v6 + 2, 4) + 1 + v8 + 4]
            if v10 == 0 then
                v9 = v9 + 1
            else
                if v9 ~= 0 then
                    v7 = v7 .. string.format("%d", v9)
                end;
                v9 = 0
                local v11 = PieceCharList[bit32.band(v10, 7) + 1]
                if bit32.band(v10, colorWhite) == 0 then
                    v7 = v7 .. v11
                else
                    v7 = v7 .. string.upper(v11)
                end;
            end;
            v8 = v8 + 1
        end;
        if v9 ~= 0 then
            v7 = v7 .. string.format("%d", v9)
        end;
        v6 = v6 + 1
    end;
    local v12 = (v7 .. iif(colorWhite > 0, " w", "b")) .. " "
    if g_castleRights == 0 then
        v12 = v12 .. "-"
    else
        if bit32.band(g_castleRights, 1) ~= 0 then
            v12 = v12 .. "K"
        end;
        if bit32.band(g_castleRights, 2) ~= 0 then
            v12 = v12 .. "Q"
        end;
        if bit32.band(g_castleRights, 4) ~= 0 then
            v12 = v12 .. "k"
        end;
        if bit32.band(g_castleRights, 8) ~= 0 then
            v12 = v12 .. "q"
        end;
    end;
    local v13 = v12 .. " "
    if g_enPassentSquare < 1 then
        return v13 .. "-";
    else
        return v13 .. FormatSquare(g_enPassentSquare);
    end;
end;
InitializeEval = function() --[[ Name: InitializeEval ]] --[[ Line: 299 ]]
    g_mobUnit = {}
    for v14 = 0, 1 do
        g_mobUnit[1 + v14] = {}
        local v15 = iif(v14 == 0, 16, 8)
        local v16 = iif(v14 == 0, 8, 16)
        g_mobUnit[1 + v14][1] = 1
        g_mobUnit[1 + v14][129] = 0
        g_mobUnit[1 + v14][bit32.bor(v15, piecePawn) + 1] = 1
        g_mobUnit[1 + v14][bit32.bor(v15, pieceBishop) + 1] = 1
        g_mobUnit[1 + v14][bit32.bor(v15, pieceKnight) + 1] = 1
        g_mobUnit[1 + v14][bit32.bor(v15, pieceRook) + 1] = 1
        g_mobUnit[1 + v14][bit32.bor(v15, pieceQueen) + 1] = 1
        g_mobUnit[1 + v14][bit32.bor(v15, pieceKing) + 1] = 1
        g_mobUnit[1 + v14][bit32.bor(v16, piecePawn) + 1] = 0
        g_mobUnit[1 + v14][bit32.bor(v16, pieceBishop) + 1] = 0
        g_mobUnit[1 + v14][bit32.bor(v16, pieceKnight) + 1] = 0
        g_mobUnit[1 + v14][bit32.bor(v16, pieceRook) + 1] = 0
        g_mobUnit[1 + v14][bit32.bor(v16, pieceQueen) + 1] = 0
        g_mobUnit[1 + v14][bit32.bor(v16, pieceKing) + 1] = 0
    end;
end;
HashEntry = function(p17, p18, p19, p20, p21, _) --[[ Name: HashEntry ]] --[[ Line: 332 ]]
    return {
        ["lock"] = p17,
        ["value"] = p18,
        ["flags"] = p19,
        ["hashDepth"] = p20,
        ["bestMove"] = p21
    };
end;
StoreHash = function(p22, p23, p24, p25, p26) --[[ Name: StoreHash ]] --[[ Line: 344 ]]
    if maxMateBuffer <= p22 then
        p22 = p22 + p26
    elseif p22 <= minMateBuffer then
        p22 = p22 - p26
    end;
    g_hashTable[bit32.band(g_hashKeyLow, g_hashMask) + 1] = HashEntry(g_hashKeyHigh, p22, p23, p24, p25)
end;
SetHash = function() --[[ Name: SetHash ]] --[[ Line: 359 ]]
    local v27 = {
        ["hashKeyLow"] = 0,
        ["hashKeyHigh"] = 0
    }
    for v28 = 0, 255 do
        local v29 = g_board[1 + v28]
        if bit32.band(v29, 24) > 0 then
            v27.hashKeyLow = bit32.bxor(v27.hashKeyLow, g_zobristLow[1 + v28][bit32.band(v29, 15) + 1])
            v27.hashKeyHigh = bit32.bxor(v27.hashKeyHigh, g_zobristHigh[1 + v28][bit32.band(v29, 15) + 1])
        end;
    end;
    if g_toMove == 0 then
        v27.hashKeyLow = bit32.bxor(v27.hashKeyLow, g_zobristBlackLow)
        v27.hashKeyHigh = bit32.bxor(v27.hashKeyHigh, g_zobristBlackHigh)
    end;
    return v27;
end;
MakeTable = function(p30) --[[ Name: MakeTable ]] --[[ Line: 385 ]]
    local v31 = {}
    for v32 = 0, 255 do
        v31[1 + v32] = 0
    end;
    for v33 = 0, 7 do
        for v34 = 0, 7 do
            v31[1 + MakeSquare(v33, v34)] = p30[1 + (v33 * 8 + v34)]
        end;
    end;
    return v31;
end;
MakeSquare = function(p35, p36) --[[ Name: MakeSquare ]] --[[ Line: 403 ]]
    return bit32.bor(bit32.lshift(p35 + 2, 4), p36 + 4);
end;
InitializeFromFen = function(p37) --[[ Name: InitializeFromFen ]] --[[ Line: 408 ]]
    local v38 = {}
    while string.len(p37) > 0 do
        local v39 = string.find(p37, " ")
        if v39 == nil then
            table.insert(v38, p37)
            p37 = ""
        else
            table.insert(v38, (string.sub(p37, 1, v39 - 1)))
            p37 = string.sub(p37, v39 + 1)
        end;
    end;
    for v40 = 0, 255 do
        g_board[1 + v40] = 128
    end;
    local v41 = v38[1]
    local v42 = 0
    local v43 = 0
    for v44 = 0, string.len(v41) - 1 do
        local v45 = string.sub(v41, v44 + 1, v44 + 1)
        if v45 == "/" then
            v42 = v42 + 1
            v43 = 0
        elseif v45 >= "0" and v45 <= "9" then
            for _ = 0, tonumber(v45) - 1 do
                g_board[(v42 + 2) * 16 + 1 + (v43 + 4)] = 0
                v43 = v43 + 1
            end;
        else
            local v46
            if v45 >= "a" then
                v46 = v45 <= "z"
            else
                v46 = false
            end;
            local v47 = iif(v46, colorBlack, colorWhite)
            if not v46 then
                v45 = string.sub(string.lower(v41), v44 + 1, v44 + 1)
            end;
            if v45 == "p" then
                v47 = bit32.bor(v47, piecePawn)
            end;
            if v45 == "b" then
                v47 = bit32.bor(v47, pieceBishop)
            end;
            if v45 == "n" then
                v47 = bit32.bor(v47, pieceKnight)
            end;
            if v45 == "r" then
                v47 = bit32.bor(v47, pieceRook)
            end;
            if v45 == "q" then
                v47 = bit32.bor(v47, pieceQueen)
            end;
            if v45 == "k" then
                v47 = bit32.bor(v47, pieceKing)
            end;
            g_board[(v42 + 2) * 16 + 1 + (v43 + 4)] = v47
            v43 = v43 + 1
        end;
    end;
    InitializePieceList()
    g_toMove = iif(v38[2] == "w", colorWhite, 0)
    g_castleRights = 0
    if string.find(v38[3], "K") ~= nil then
        g_castleRights = bit32.bor(g_castleRights, 1)
    end;
    if string.find(v38[3], "Q") ~= nil then
        g_castleRights = bit32.bor(g_castleRights, 2)
    end;
    if string.find(v38[3], "k") ~= nil then
        g_castleRights = bit32.bor(g_castleRights, 4)
    end;
    if string.find(v38[3], "q") ~= nil then
        g_castleRights = bit32.bor(g_castleRights, 8)
    end;
    g_enPassentSquare = -1
    if string.find(v38[4], "-") == nil then
        g_enPassentSquare = deFormatSquare(v38[4])
    end;
    local v48 = SetHash()
    g_hashKeyLow = v48.hashKeyLow
    g_hashKeyHigh = v48.hashKeyHigh
    g_baseEval = 0
    for v49 = 0, 255 do
        if bit32.band(g_board[1 + v49], colorWhite) > 0 then
            g_baseEval = g_baseEval + pieceSquareAdj[bit32.band(g_board[1 + v49], 7) + 1][1 + v49]
            g_baseEval = g_baseEval + materialTable[bit32.band(g_board[1 + v49], 7) + 1]
        elseif bit32.band(g_board[1 + v49], colorBlack) > 0 then
            g_baseEval = g_baseEval - pieceSquareAdj[bit32.band(g_board[1 + v49], 7) + 1][1 + flipTable[1 + v49]]
            g_baseEval = g_baseEval - materialTable[bit32.band(g_board[1 + v49], 7) + 1]
        end;
    end;
    if g_toMove == 0 then
        g_baseEval = -g_baseEval
    end;
    g_move50 = 0
    g_inCheck = IsSquareAttackable(g_pieceList[bit32.lshift(bit32.bor(g_toMove, pieceKing), 4) + 1], 8 - g_toMove)
end;
IsSquareAttackableFrom = function(p50, p51) --[[ Name: IsSquareAttackableFrom ]] --[[ Line: 547 ]]
    local v52 = p51 - p50 + 128
    local v53 = g_board[1 + p51]
    if bit32.band(g_vectorDelta[1 + v52].pieceMask[bit32.band(bit32.rshift(v53, 3), 1) + 1], (bit32.lshift(1, (bit32.band(v53, 7))))) > 0 then
        local l_delta_0 = g_vectorDelta[1 + v52].delta
        while true do
            p51 = p51 + l_delta_0
            if p51 == p50 then
                return true;
            end;
            if g_board[1 + p51] ~= 0 then
                break;
            end;
        end;
    else
        -- ::l2:: (Possible bug with goto)
        return false;
    end;
end;
IsSquareAttackable = function(p54, p55) --[[ Name: IsSquareAttackable ]] --[[ Line: 573 ]]
    local v56 = iif(p55 > 0, -16, 16)
    local v57 = bit32.bor(iif(p55 > 0, colorWhite, colorBlack), 1)
    if g_board[1 + p54 - (v56 - 1)] == v57 then
        return true;
    end;
    if g_board[1 + p54 - (v56 + 1)] == v57 then
        return true;
    end;
    for v58 = 2, 6 do
        local v59 = bit32.lshift(bit32.bor(p55, v58), 4)
        local v60 = g_pieceList[v59 + 1]
        while v60 ~= 0 do
            if IsSquareAttackableFrom(p54, v60) then
                return true;
            end;
            v59 = v59 + 1
            v60 = g_pieceList[v59 + 1]
        end;
    end;
    return false;
end;
IsHashMoveValid = function(p61) --[[ Name: IsHashMoveValid ]] --[[ Line: 605 ]]
    local v62 = bit32.band(p61, 255)
    local v63 = bit32.band(bit32.rshift(p61, 8), 255)
    local v64 = v63 - v62
    local v65 = g_board[v62 + 1]
    local v66 = bit32.band(v65, 7)
    if v66 < piecePawn or pieceKing < v66 then
        return false;
    elseif g_toMove == bit32.band(v65, 8) then
        if g_board[v63 + 1] == 0 or g_toMove ~= bit32.band(g_board[v63 + 1], 8) then
            if v66 == piecePawn then
                if bit32.band(p61, moveflagEPC) > 0 then
                    return false;
                end;
                if g_toMove == colorWhite ~= (v64 < 0) then
                    return false;
                end;
                local v67 = bit32.band(v63, 240)
                local v68
                if v67 == 144 and g_toMove == 0 then
                    v68 = true
                elseif v67 == 32 then
                    v68 = g_toMove > 0
                else
                    v68 = false
                end;
                if v68 ~= (bit32.band(p61, moveflagPromotion) > 0) then
                    return false;
                end;
                if v64 == -16 or v64 == 16 then
                    return g_board[v63 + 1] == 0;
                end;
                if v64 == -15 or (v64 == -17 or (v64 == 15 or v64 == 17)) then
                    return g_board[v63 + 1] ~= 0;
                end;
                if v64 == -32 then
                    if v67 ~= 96 then
                        return false;
                    end;
                    if g_board[v63 + 1] ~= 0 then
                        return false;
                    end;
                    if g_board[v62 - 16 + 1] ~= 0 then
                        return false;
                    end;
                else
                    if v64 ~= 32 then
                        return false;
                    end;
                    if v67 ~= 80 then
                        return false;
                    end;
                    if g_board[v63 + 1] ~= 0 then
                        return false;
                    end;
                    if g_board[v62 + 16 + 1] ~= 0 then
                        return false;
                    end;
                end;
                return true;
            elseif bit32.rshift(p61, 16) > 0 then
                return false;
            else
                return IsSquareAttackableFrom(v63, v62);
            end;
        else
            return false;
        end;
    else
        return false;
    end;
end;
IsRepDraw = function() --[[ Name: IsRepDraw ]] --[[ Line: 697 ]]
    local v69 = g_moveCount - 5
    local v70 = g_moveCount - 1 - g_move50
    local v71 = iif(v70 < 0, 0, v70)
    while v71 <= v69 do
        if g_repMoveStack[1 + v69] == g_hashKeyLow then
            return true;
        end;
        v69 = v69 - 2
    end;
    return false;
end;
MovePicker = function(p72, p73, p74, p75, p76) --[[ Name: MovePicker ]] --[[ Line: 713 ]]
    p72.hashMove = p73
    p72.depth = p74
    p72.killer1 = p75
    p72.killer2 = p76
    p72.moves = {}
    p72.losingCaptures = nil
    p72.moveCount = 0
    p72.atMove = -1
    p72.moveScores = nil
    p72.stage = 0
end;
nextMove = function(p77) --[[ Name: nextMove ]] --[[ Line: 729 ]]
    p77.atMove = p77.atMove + 1
    if p77.atMove == p77.moveCount then
        p77.stage = p77.stage + 1
        if p77.stage == 1 then
            if p77.hashMove ~= nil and IsHashMoveValid(p77.hashMove) then
                p77.moves[1] = p77.hashMove
                p77.moveCount = 1
            end;
            if p77.moveCount ~= 1 then
                p77.hashMove = nil
                p77.stage = p77.stage + 1
            end;
        end;
        if p77.stage == 2 then
            GenerateCaptureMoves(p77.moves)
            p77.moveCount = #p77.moves
            p77.moveScores = {}
            for v78 = p77.atMove, p77.moveCount - 1 do
                p77.moveScores[1 + v78] = bit32.lshift(bit32.band(g_board[bit32.band(bit32.rshift(p77.moves[1 + v78], 8), 255) + 1], 7), 5) - bit32.band(g_board[bit32.band(p77.moves[1 + v78], 255) + 1], 7)
            end;
            if p77.atMove == p77.moveCount then
                p77.stage = p77.stage + 1
            end;
        end;
        if p77.stage == 3 then
            if IsHashMoveValid(p77.killer1) and p77.killer1 ~= p77.hashMove then
                p77.moves[#p77.moves + 1] = p77.killer1
                p77.moveCount = #p77.moves
            else
                p77.killer1 = 0
                p77.stage = p77.stage + 1
            end;
        end;
        if p77.stage == 4 then
            if IsHashMoveValid(p77.killer2) and p77.killer2 ~= p77.hashMove then
                p77.moves[#p77.moves + 1] = p77.killer2
                p77.moveCount = #p77.moves
            else
                p77.killer2 = 0
                p77.stage = p77.stage + 1
            end;
        end;
        if p77.stage == 5 then
            GenerateAllMoves(p77.moves)
            p77.moveCount = #p77.moves
            for v79 = p77.atMove, p77.moveCount - 1 do
                p77.moveScores[1 + v79] = ScoreMove(p77.moves[1 + v79])
            end;
            if p77.atMove == p77.moveCount then
                p77.stage = p77.stage + 1
            end;
        end;
        if p77.stage == 6 then
            if p77.losingCaptures ~= nil then
                for v80 = 0, #p77.losingCaptures - 1 do
                    p77.moves[#p77.moves + 1] = p77.losingCaptures[1 + v80]
                end;
                for v81 = p77.atMove, p77.moveCount - 1 do
                    p77.moveScores[1 + v81] = ScoreMove(p77.moves[1 + v81])
                end;
                p77.moveCount = #p77.moves
            end;
            if p77.atMove == p77.moveCount then
                p77.stage = p77.stage + 1
            end;
        end;
        if p77.stage == 7 then
            return 0;
        end;
    end;
    local l_atMove_0 = p77.atMove
    for v82 = p77.atMove + 1, p77.moveCount - 1 do
        if p77.moveScores[1 + v82] == nil then
            break;
        end;
        if p77.moveScores[1 + v82] > p77.moveScores[l_atMove_0 + 1] then
            l_atMove_0 = v82
        end;
    end;
    if l_atMove_0 ~= p77.atMove then
        local l_moves_0 = p77.moves[1 + p77.atMove]
        p77.moves[1 + p77.atMove] = p77.moves[l_atMove_0 + 1]
        p77.moves[l_atMove_0 + 1] = l_moves_0
        local l_moveScores_0 = p77.moveScores[1 + p77.atMove]
        p77.moveScores[1 + p77.atMove] = p77.moveScores[l_atMove_0 + 1]
        p77.moveScores[l_atMove_0 + 1] = l_moveScores_0
    end;
    local l_moves_1 = p77.moves[1 + p77.atMove]
    if p77.stage > 1 and l_moves_1 == p77.hashMove or (p77.stage > 3 and l_moves_1 == p77.killer1 or p77.stage > 4 and l_moves_1 == p77.killer2) then
        return nextMove(p77);
    end;
    if p77.stage ~= 2 or See(l_moves_1) then
        return p77.moves[1 + p77.atMove];
    end;
    if p77.losingCaptures == nil then
        p77.losingCaptures = {}
    end;
    p77.losingCaptures[#p77.losingCaptures + 1] = l_moves_1
    return nextMove(p77);
end;
AllCutNode = function(p83, p84, p85, p86) --[[ Name: AllCutNode ]] --[[ Line: 868 ]]
    local v87 = nil
    local v88 = 2500 + 200 * p83
    local v89 = 0
    local v90 = {}
    if p83 <= 0 then
        return QSearch(p85 - 1, p85, 0);
    end;
    if os.clock() - g_startTime > g_timeout then
        g_searchValid = false
        return p85 - 1;
    end;
    if g_finCnt > g_maxfinCnt then
        g_searchValid = false
        return p85 - 1;
    end;
    g_nodeCount = g_nodeCount + 1
    if IsRepDraw() then
        return 0;
    end;
    if p85 <= minEval + p84 then
        return p85;
    end;
    if maxEval - (p84 + 1) < p85 then
        return p85 - 1;
    end;
    local v91 = g_hashTable[bit32.band(g_hashKeyLow, g_hashMask) + 1]
    if v91 ~= nil and v91.lock == g_hashKeyHigh then
        v87 = v91.bestMove
        if p83 <= v91.hashDepth then
            local l_value_0 = v91.value
            if maxMateBuffer <= l_value_0 then
                l_value_0 = l_value_0 - p84
            elseif l_value_0 <= minMateBuffer then
                l_value_0 = l_value_0 + p84
            end;
            if v91.flags == hashflagExact then
                return l_value_0;
            end;
            if v91.flags == hashflagAlpha and l_value_0 < p85 then
                return l_value_0;
            end;
            if v91.flags == hashflagBeta and p85 <= l_value_0 then
                return l_value_0;
            end;
        end;
    end;
    if not g_inCheck and (p86 and (minMateBuffer < p85 and p85 < maxMateBuffer)) then
        if v87 == nil and (p83 < 4 and g_baseEval < p85 - v88) then
            local v92 = p85 - v88
            local v93 = QSearch(v92 - 1, v92, 0)
            if v93 < v92 then
                return v93;
            end;
        end;
        if p83 > 1 and (g_baseEval >= p85 - iif(p83 >= 4, 2500, 0) and (g_pieceCount[bit32.bor(pieceBishop, g_toMove) + 1] ~= 0 or (g_pieceCount[bit32.bor(pieceKnight, g_toMove) + 1] ~= 0 or (g_pieceCount[bit32.bor(pieceRook, g_toMove) + 1] ~= 0 or g_pieceCount[bit32.bor(pieceQueen, g_toMove) + 1] ~= 0)))) then
            local v94 = 3 + iif(p83 >= 5, 1, p83 / 4)
            if g_baseEval - p85 > 1500 then
                v94 = v94 + 1
            end;
            g_toMove = 8 - g_toMove
            g_baseEval = -g_baseEval
            g_hashKeyLow = bit32.bxor(g_hashKeyLow, g_zobristBlackLow)
            g_hashKeyHigh = bit32.bxor(g_hashKeyHigh, g_zobristBlackHigh)
            v89 = -AllCutNode(p83 - v94, p84 + 1, -(p85 - 1), false)
            g_hashKeyLow = bit32.bxor(g_hashKeyLow, g_zobristBlackLow)
            g_hashKeyHigh = bit32.bxor(g_hashKeyHigh, g_zobristBlackHigh)
            g_toMove = 8 - g_toMove
            g_baseEval = -g_baseEval
            if p85 <= v89 then
                return p85;
            end;
        end;
    end;
    local v95 = minEval
    MovePicker(v90, v87, p84, g_killers[1 + p84][1], g_killers[1 + p84][2])
    local v96 = false
    while true do
        local v97 = nextMove(v90)
        if v97 == 0 then
            break;
        end;
        local v98 = p83 - 1
        local v99
        if MakeMove(v97) then
            local v100 = true
            if g_inCheck then
                v98 = v98 + 1
            elseif v90.stage == 5 and (v90.atMove > 5 and p83 >= 3) then
                v89 = -AllCutNode(v98 - iif(v90.atMove > 14, 2, 1), p84 + 1, -(p85 - 1), true)
                if p85 <= v89 then
                    v100 = true
                else
                    v100 = false
                end;
            end;
            if v100 then
                v99 = -AllCutNode(v98, p84 + 1, -(p85 - 1), true)
            else
                v99 = v89
            end;
            v96 = true
            UnmakeMove(v97)
            if not g_searchValid then
                return p85 - 1;
            end;
            if v95 < v99 then
                if p85 <= v99 then
                    local v101 = bit32.band(bit32.rshift(v97, 8), 255)
                    if g_board[v101 + 1] == 0 then
                        local v102 = bit32.band(g_board[bit32.band(v97, 255) + 1], 15)
                        local v103 = historyTable[v102 + 1][v101 + 1] + p83 * p83
                        if v103 > 32767 then
                            v103 = bit32.rshift(v103, 1)
                        end;
                        historyTable[v102 + 1][v101 + 1] = v103
                        if g_killers[1 + p84][1] ~= v97 then
                            g_killers[1 + p84][2] = g_killers[1 + p84][1]
                            g_killers[1 + p84][1] = v97
                        end;
                    end;
                    StoreHash(v99, hashflagBeta, p83, v97, p84)
                    return v99;
                end;
                v89 = v99
            else
                v89 = v99
                v99 = v95
                v97 = v87
            end;
        else
            v97 = v87
            v99 = v95
        end;
        v87 = v97
        v95 = v99
    end;
    if not v96 then
        return not g_inCheck and 0 or minEval + p84;
    end;
    StoreHash(v95, hashflagAlpha, p83, v87, p84)
    return v95;
end;
AlphaBeta = function(p104, p105, p106, p107) --[[ Name: AlphaBeta ]] --[[ Line: 1092 ]]
    local v108 = nil
    local v109 = hashflagAlpha
    local v110 = {}
    if p104 <= 0 then
        return QSearch(p106, p107, 0);
    end;
    g_nodeCount = g_nodeCount + 1
    if p105 > 0 and IsRepDraw() then
        return 0;
    end;
    local v111 = iif(p106 < minEval + p105, p106, minEval + p105)
    local v112 = iif(maxEval - (p105 + 1) < p107, p107, maxEval - (p105 + 1))
    if v112 <= v111 then
        return v111;
    end;
    local v113 = g_hashTable[bit32.band(g_hashKeyLow, g_hashMask) + 1]
    if v113 ~= nil and v113.lock == g_hashKeyHigh then
        v108 = v113.bestMove
    end;
    local v114 = g_inCheck
    local v115 = minEval
    MovePicker(v110, v108, p105, g_killers[1 + p105][1], g_killers[1 + p105][2])
    local v116 = false
    while true do
        local v117 = nextMove(v110)
        if v117 == 0 then
            break;
        end;
        local v118 = p104 - 1
        local v119
        if MakeMove(v117) then
            if g_inCheck then
                v118 = v118 + 1
            end;
            if v116 then
                v119 = -AllCutNode(v118, p105 + 1, -v111, true)
                if v111 < v119 then
                    v119 = -AlphaBeta(v118, p105 + 1, -v112, -v111)
                end;
            else
                v119 = -AlphaBeta(v118, p105 + 1, -v112, -v111)
            end;
            v116 = true
            UnmakeMove(v117)
            if not g_searchValid then
                return v111;
            end;
            if v115 < v119 then
                if v112 <= v119 then
                    local v120 = bit32.band(bit32.rshift(v117, 8), 255)
                    if g_board[v120 + 1] == 0 then
                        local v121 = bit32.band(g_board[bit32.band(v117, 255) + 1], 15)
                        local v122 = historyTable[v121 + 1][v120 + 1] + p104 * p104
                        if v122 > 32767 then
                            v122 = bit32.rshift(v122, 1)
                        end;
                        historyTable[v121 + 1][v120 + 1] = v122
                        if g_killers[1 + p105][1] ~= v117 then
                            g_killers[1 + p105][2] = g_killers[1 + p105][1]
                            g_killers[1 + p105][1] = v117
                        end;
                    end;
                    StoreHash(v119, hashflagBeta, p104, v117, p105)
                    return v119;
                end;
                if p106 < v119 then
                    v109 = hashflagExact
                    v111 = v119
                end;
            else
                v117 = v108
                v119 = v115
            end;
        else
            v117 = v108
            v119 = v115
        end;
        v108 = v117
        v115 = v119
    end;
    if not v116 then
        return not v114 and 0 or minEval + p105;
    end;
    StoreHash(v115, v109, p104, v108, p105)
    return v115;
end;
InitializePieceList = function() --[[ Name: InitializePieceList ]] --[[ Line: 1226 ]]
    for v123 = 0, 15 do
        g_pieceCount[1 + v123] = 0
        for v124 = 0, 15 do
            g_pieceList[bit32.bor(bit32.lshift(v123, 4), v124) + 1] = 0
        end;
    end;
    for v125 = 0, 255 do
        g_pieceIndex[1 + v125] = 0
        if bit32.band(g_board[1 + v125], (bit32.bor(colorWhite, colorBlack))) > 0 then
            local v126 = bit32.band(g_board[1 + v125], 15)
            g_pieceList[bit32.bor(bit32.lshift(v126, 4), g_pieceCount[v126 + 1]) + 1] = v125
            g_pieceIndex[1 + v125] = g_pieceCount[v126 + 1]
            g_pieceCount[v126 + 1] = g_pieceCount[v126 + 1] + 1
        end;
    end;
end;
mt = {}
mt.N = 624
mt.M = 397
mt.MAG01 = { 0, 2567483615 }
mt.mt = {}
mt.mti = mt.N + 1
mt.setSeed = function(p127) --[[ Line: 1265 ]]
    mt.mt[1] = p127
    for v128 = 1, mt.N - 1 do
        local v129 = bit32.bxor(mt.mt[1 + (v128 - 1)], (bit32.rshift(mt.mt[1 + (v128 - 1)], 30)))
        mt.mt[1 + v128] = bit32.lshift(bit32.rshift(bit32.band(v129, 4294901760), 16) * 1812433253, 16) + bit32.band(v129, 65535) * 1812433253 + v128
    end;
    mt.mti = mt.N
end;
mt.next = function(p130) --[[ Line: 1278 ]]
    if mt.mti >= mt.N then
        for v131 = 0, mt.N - mt.M - 1 do
            local v132 = bit32.bor(bit32.band(mt.mt[1 + v131], 2147483648), (bit32.band(mt.mt[1 + (v131 + 1)], 2147483647)))
            mt.mt[1 + v131] = bit32.bxor((bit32.bxor(mt.mt[1 + (v131 + mt.M)], bit32.rshift(v132, 1), mt.MAG01[bit32.band(v132, 1) + 1])))
        end;
        for v133 = mt.N - mt.M, mt.N - 1 - 1 do
            local v134 = bit32.bor(bit32.band(mt.mt[1 + v133], 2147483648), (bit32.band(mt.mt[1 + (v133 + 1)], 2147483647)))
            mt.mt[1 + v133] = bit32.bxor((bit32.bxor(mt.mt[1 + v133 + (mt.M - mt.N)], bit32.rshift(v134, 1), mt.MAG01[bit32.band(v134, 1) + 1])))
        end;
        local v135 = bit32.bor(bit32.band(mt.mt[1 + (mt.N - 1)], 2147483648), (bit32.band(mt.mt[1], 2147483647)))
        mt.mt[1 + (mt.N - 1)] = bit32.bxor((bit32.bxor(mt.mt[1 + (mt.M - 1)], bit32.rshift(v135, 1), mt.MAG01[bit32.band(v135, 1) + 1])))
        mt.mti = 0
    end;
    local l_mt_0 = mt.mt[1 + mt.mti]
    mt.mti = mt.mti + 1
    local v136 = bit32.bxor(l_mt_0, (bit32.rshift(l_mt_0, 11)))
    local v137 = bit32.bxor(v136, (bit32.band(bit32.lshift(v136, 7), 2636928640)))
    local v138 = bit32.bxor(v137, (bit32.band(bit32.lshift(v137, 15), 4022730752)))
    return bit32.band(bit32.rshift(bit32.bxor(v138, (bit32.rshift(v138, 18))), 32 - p130), 4294967295);
end;
ResetGame = function() --[[ Name: ResetGame ]] --[[ Line: 1316 ]]
    mt.setSeed(464384013)
    g_killers = {}
    for v139 = 0, 127 do
        g_killers[1 + v139] = { 0, 0 }
    end;
    g_hashTable = {}
    for v140 = 0, 31 do
        historyTable[1 + v140] = {}
        for v141 = 0, 255 do
            historyTable[1 + v140][1 + v141] = 0
        end;
    end;
    g_zobristLow = {}
    g_zobristHigh = {}
    for v142 = 0, 255 do
        g_zobristLow[1 + v142] = {}
        g_zobristHigh[1 + v142] = {}
        for v143 = 0, 15 do
            g_zobristLow[1 + v142][1 + v143] = mt.next(32)
            g_zobristHigh[1 + v142][1 + v143] = mt.next(32)
        end;
    end;
    g_zobristBlackLow = mt.next(32)
    g_zobristBlackHigh = mt.next(32)
    for v144 = 0, 7 do
        for v145 = 0, 7 do
            flipTable[MakeSquare(v144, v145) + 1] = MakeSquare(7 - v144, v145)
        end;
    end;
    pieceSquareAdj[1 + piecePawn] = MakeTable(pawnAdj)
    pieceSquareAdj[1 + pieceKnight] = MakeTable(knightAdj)
    pieceSquareAdj[1 + pieceBishop] = MakeTable(bishopAdj)
    pieceSquareAdj[1 + pieceRook] = MakeTable(rookAdj)
    pieceSquareAdj[1 + pieceQueen] = MakeTable(emptyAdj)
    pieceSquareAdj[1 + pieceKing] = MakeTable(kingAdj)
    local v146 = {
        {},
        {},
        g_knightDeltas,
        g_bishopDeltas,
        g_rookDeltas,
        g_queenDeltas,
        g_queenDeltas
    }
    for v147 = 0, 255 do
        g_vectorDelta[1 + v147] = {}
        g_vectorDelta[1 + v147].delta = 0
        g_vectorDelta[1 + v147].pieceMask = {}
        g_vectorDelta[1 + v147].pieceMask[1] = 0
        g_vectorDelta[1 + v147].pieceMask[2] = 0
    end;
    local v148 = 0
    -- ::l48:: (Possible bug with goto)
    if v148 >= 128 then
        return;
    end;
    local v149 = 0
    while v149 < 8 do
        local v150 = bit32.bor(v148, v149)
        local v151 = v150 - (v150 - 17) + 128
        g_vectorDelta[v151 + 1].pieceMask[bit32.rshift(colorWhite, 3) + 1] = bit32.bor(g_vectorDelta[v151 + 1].pieceMask[bit32.rshift(colorWhite, 3) + 1], (bit32.lshift(1, piecePawn)))
        local v152 = v150 - (v150 - 15) + 128
        g_vectorDelta[v152 + 1].pieceMask[bit32.rshift(colorWhite, 3) + 1] = bit32.bor(g_vectorDelta[v152 + 1].pieceMask[bit32.rshift(colorWhite, 3) + 1], (bit32.lshift(1, piecePawn)))
        local v153 = v150 - (v150 + 17) + 128
        g_vectorDelta[v153 + 1].pieceMask[1] = bit32.bor(g_vectorDelta[v153 + 1].pieceMask[1], (bit32.lshift(1, piecePawn)))
        local v154 = v150 - (v150 + 15) + 128
        g_vectorDelta[v154 + 1].pieceMask[1] = bit32.bor(g_vectorDelta[v154 + 1].pieceMask[1], (bit32.lshift(1, piecePawn)))
        for v155 = pieceKnight, pieceKing do
            local v156 = 0
            while v156 < #v146[1 + v155] do
                local v157 = v150 + v146[1 + v155][v156 + 1]
                while bit32.band(v157, 136) == 0 do
                    local v158 = v150 - v157 + 128
                    g_vectorDelta[v158 + 1].pieceMask[bit32.rshift(colorWhite, 3) + 1] = bit32.bor(g_vectorDelta[v158 + 1].pieceMask[bit32.rshift(colorWhite, 3) + 1], (bit32.lshift(1, v155)))
                    g_vectorDelta[v158 + 1].pieceMask[1] = bit32.bor(g_vectorDelta[v158 + 1].pieceMask[1], (bit32.lshift(1, v155)))
                    local v159 = v150 < v157 and 1 or -1
                    if bit32.band(v150, 240) == bit32.band(v157, 240) then
                        g_vectorDelta[v158 + 1].delta = v159 * 1
                    elseif bit32.band(v150, 15) == bit32.band(v157, 15) then
                        g_vectorDelta[v158 + 1].delta = v159 * 16
                    elseif v150 % 15 == v157 % 15 then
                        g_vectorDelta[v158 + 1].delta = v159 * 15
                    elseif v150 % 17 == v157 % 17 then
                        g_vectorDelta[v158 + 1].delta = v159 * 17
                    end;
                    if v155 == pieceKnight then
                        g_vectorDelta[v158 + 1].delta = v146[1 + v155][v156 + 1]
                        break;
                    end;
                    if v155 == pieceKing then
                        break;
                    end;
                    v157 = v157 + v146[1 + v155][v156 + 1]
                end;
                v156 = v156 + 1
            end;
        end;
        v149 = v149 + 1
    end;
    v148 = v148 + 16
    continue;
end;
Search = function(p160) --[[ Name: Search ]] --[[ Line: 1467 ]]
    local v161 = minEval
    local v162 = maxEval
    g_globalPly = g_globalPly + 1
    g_nodeCount = 0
    g_qNodeCount = 0
    g_searchValid = true
    g_foundmove = 0
    g_finCnt = 0
    g_startTime = os.clock()
    local v163 = 1
    local v164 = 0
    local v165 = 0
    while v163 <= p160 and g_searchValid do
        local v166 = AlphaBeta(v163, 0, v161, v162)
        if not g_searchValid then
            break;
        end;
        if v161 < v166 and v166 < v162 then
            v161 = v166 - 500
            v162 = v166 + 500
            if v161 < minEval then
                v161 = minEval
            end;
            if maxEval < v162 then
                v162 = maxEval
            end;
        elseif v161 ~= minEval then
            v161 = minEval
            v162 = maxEval
            v163 = v163 - 1
        end;
        if g_hashTable[bit32.band(g_hashKeyLow, g_hashMask) + 1] ~= nil then
            v164 = g_hashTable[bit32.band(g_hashKeyLow, g_hashMask) + 1].bestMove
        end;
        v163 = v163 + 1
        task.wait()
        v165 = v166
    end;
    finishMoveCallback(v164, v165, v163 - 1)
end;
PawnEval = function(p167) --[[ Name: PawnEval ]] --[[ Line: 1528 ]]
    local v168 = bit32.lshift(bit32.bor(p167, 1), 4)
    local v169 = g_pieceList[v168 + 1]
    local v170 = v168 + 1
    while v169 ~= 0 do
        v169 = g_pieceList[v170 + 1]
        v170 = v170 + 1
    end;
end;
Mobility = function(p171) --[[ Name: Mobility ]] --[[ Line: 1541 ]]
    local v172 = iif(p171 == 8, 16, 8)
    local v173 = iif(p171 == 8, g_mobUnit[1], g_mobUnit[2])
    local v174 = bit32.lshift(bit32.bor(p171, 2), 4)
    local v175 = g_pieceList[v174 + 1]
    local v176 = v174 + 1
    local v177 = -3
    local v178 = 0
    while v175 ~= 0 do
        v177 = v177 + v173[1 + g_board[v175 + 31 + 1]] + v173[1 + g_board[v175 + 33 + 1]] + v173[1 + g_board[v175 + 14 + 1]] + v173[1 + g_board[v175 - 14 + 1]] + v173[1 + g_board[v175 - 31 + 1]] + v173[1 + g_board[v175 - 33 + 1]] + v173[1 + g_board[v175 + 18 + 1]] + v173[1 + g_board[v175 - 18 + 1]]
        v175 = g_pieceList[v176 + 1]
        v176 = v176 + 1
    end;
    local v179 = v178 + v177 * 65
    local v180 = bit32.lshift(bit32.bor(p171, 3), 4)
    local v181 = g_pieceList[v180 + 1]
    local v182 = v180 + 1
    local v183 = -4
    while v181 ~= 0 do
        v183 = AdjMob(v181, 17, AdjMob(v181, 15, AdjMob(v181, -17, AdjMob(v181, -15, v183, v172), v172), v172), v172)
        v181 = g_pieceList[v182 + 1]
        v182 = v182 + 1
    end;
    local v184 = v179 + v183 * 50
    local v185 = bit32.lshift(bit32.bor(p171, 4), 4)
    local v186 = g_pieceList[v185 + 1]
    local v187 = v185 + 1
    local v188 = -4
    while v186 ~= 0 do
        v188 = AdjMob(v186, 16, AdjMob(v186, -16, AdjMob(v186, 1, AdjMob(v186, -1, v188, v172), v172), v172), v172)
        v186 = g_pieceList[v187 + 1]
        v187 = v187 + 1
    end;
    local v189 = v184 + v188 * 25
    local v190 = bit32.lshift(bit32.bor(p171, 5), 4)
    local v191 = g_pieceList[v190 + 1]
    local v192 = v190 + 1
    local v193 = -2
    while v191 ~= 0 do
        v193 = AdjMob(v191, 16, AdjMob(v191, -16, AdjMob(v191, 1, AdjMob(v191, -1, AdjMob(v191, 17, AdjMob(v191, 15, AdjMob(v191, -17, AdjMob(v191, -15, v193, v172), v172), v172), v172), v172), v172), v172), v172)
        v191 = g_pieceList[v192 + 1]
        v192 = v192 + 1
    end;
    return v189 + v193 * 22;
end;
AdjMob = function(p194, p195, p196, p197) --[[ Name: AdjMob ]] --[[ Line: 1623 ]]
    local v198 = p194 + p195
    while g_board[1 + v198] == 0 do
        v198 = v198 + p195
        p196 = p196 + 1
    end;
    if bit32.band(g_board[1 + v198], p197) > 0 then
        p196 = p196 + 1
    end;
    return p196;
end;
Evaluate = function() --[[ Name: Evaluate ]] --[[ Line: 1638 ]]
    local v199 = g_baseEval
    local v200 = Mobility(8) - Mobility(0)
    local v201 = 0
    if g_pieceList[bit32.lshift(pieceQueen, 4) + 1] == 0 then
        v201 = v201 - pieceSquareAdj[1 + pieceKing][1 + g_pieceList[bit32.lshift(bit32.bor(colorWhite, pieceKing), 4) + 1]]
    end;
    if g_pieceList[bit32.lshift(bit32.bor(colorWhite, pieceQueen), 4) + 1] == 0 then
        v201 = v201 + pieceSquareAdj[1 + pieceKing][1 + flipTable[1 + g_pieceList[bit32.lshift(pieceKing, 4) + 1]]]
    end;
    if g_pieceCount[1 + pieceBishop] >= 2 then
        v201 = v201 - 500
    end;
    if g_pieceCount[bit32.bor(pieceBishop, colorWhite) + 1] >= 2 then
        v201 = v201 + 500
    end;
    if g_toMove == 0 then
        return v199 - v200 - v201;
    else
        return v199 + v200 + v201;
    end;
end;
ScoreMove = function(p202) --[[ Name: ScoreMove ]] --[[ Line: 1677 ]]
    local v203 = bit32.band(bit32.rshift(p202, 8), 255)
    local v204 = bit32.band(g_board[v203 + 1], 7)
    local v205 = g_board[bit32.band(p202, 255) + 1]
    local v206 = bit32.band(v205, 7)
    if v204 == 0 then
        return historyTable[bit32.band(v205, 15) + 1][v203 + 1];
    else
        return bit32.lshift(v204, 5) - v206;
    end;
end;
QSearch = function(p207, p208, p209) --[[ Name: QSearch ]] --[[ Line: 1693 ]]
    g_qNodeCount = g_qNodeCount + 1
    local v210 = iif(g_inCheck, minEval + 1, Evaluate())
    if p208 <= v210 then
        return v210;
    end;
    if p207 < v210 then
        p207 = v210
    end;
    local v211 = {}
    local v212 = {}
    local v213 = g_inCheck
    if v213 then
        GenerateCaptureMoves(v211)
        GenerateAllMoves(v211)
        for v214 = 0, #v211 - 1 do
            v212[1 + v214] = ScoreMove(v211[1 + v214])
        end;
    else
        GenerateCaptureMoves(v211)
        for v215 = 0, #v211 - 1 do
            v212[1 + v215] = bit32.lshift(bit32.band(g_board[bit32.band(bit32.rshift(v211[1 + v215], 8), 255) + 1], 7), 5) - bit32.band(g_board[bit32.band(v211[1 + v215], 255) + 1], 7)
        end;
    end;
    for v219 = 0, #v211 - 1 do
        local v217 = v219
        for v218 = #v211 - 1, v219 + 1, -1 do
            if v212[1 + v218] > v212[v219 + 1] then
                local v219 = v218
            end;
        end;
        local v220 = v211[1 + v217]
        v211[1 + v217] = v211[v219 + 1]
        v211[v219 + 1] = v220
        local v221 = v212[1 + v217]
        v212[1 + v217] = v212[v219 + 1]
        v212[v219 + 1] = v221
        if (v213 or See(v211[1 + v217])) and MakeMove(v211[1 + v217]) then
            local v222 = -QSearch(-p208, -p207, p209 - 1)
            UnmakeMove(v211[1 + v217])
            if v210 < v222 then
                if p208 <= v222 then
                    return v222;
                end;
                if p207 < v222 then
                    p207 = v222
                end;
                v210 = v222
            end;
        end;
    end;
    if p209 == 0 and not v213 then
        local v223 = {}
        GenerateAllMoves(v223)
        for v224 = 0, #v223 - 1 do
            v212[1 + v224] = ScoreMove(v223[1 + v224])
        end;
        for v228 = 0, #v223 - 1 do
            local v226 = v228
            for v227 = #v223 - 1, v228 + 1, -1 do
                if v212[1 + v227] > v212[v228 + 1] then
                    local v228 = v227
                end;
            end;
            local v229 = v223[1 + v226]
            v223[1 + v226] = v223[v228 + 1]
            v223[v228 + 1] = v229
            local v230 = v212[1 + v226]
            v212[1 + v226] = v212[v228 + 1]
            v212[v228 + 1] = v230
            local v231 = false
            local v232
            if MakeMove(v223[1 + v226]) then
                local v233 = g_inCheck
                UnmakeMove(v223[1 + v226])
                v232 = not v233 and true or (not See(v223[1 + v226]) and true or v231)
            else
                v232 = true
            end;
            if not v232 then
                MakeMove(v223[1 + v226])
                local v234 = -QSearch(-p208, -p207, p209 - 1)
                UnmakeMove(v223[1 + v226])
                if v210 < v234 then
                    if p208 <= v234 then
                        return v234;
                    end;
                    if p207 < v234 then
                        p207 = v234
                    end;
                    v210 = v234
                end;
            end;
        end;
    end;
    return v210;
end;
UndoHistory = function(p235, p236, p237, p238, p239, p240, p241, p242) --[[ Name: UndoHistory ]] --[[ Line: 1853 ]]
    return {
        ["ep"] = p235,
        ["castleRights"] = p236,
        ["inCheck"] = p237,
        ["baseEval"] = p238,
        ["hashKeyLow"] = p239,
        ["hashKeyHigh"] = p240,
        ["move50"] = p241,
        ["captured"] = p242
    };
end;
MakeMove = function(p243) --[[ Name: MakeMove ]] --[[ Line: 1868 ]]
    local v244 = bit32.rshift(g_toMove, 3)
    local v245 = 8 - g_toMove
    local v246 = bit32.band(p243, 16711680)
    local v247 = bit32.band(bit32.rshift(p243, 8), 255)
    local v248 = bit32.band(p243, 255)
    local v249 = v247 - v248
    local v250 = g_board[v247 + 1]
    local v251 = g_board[v248 + 1]
    g_finCnt = g_finCnt + 1
    local v252
    if bit32.band(v246, moveflagEPC) > 0 then
        v252 = iif(v244 > 0, v247 + 16, v247 - 16)
        v250 = g_board[v252 + 1]
        g_board[v252 + 1] = pieceEmpty
    else
        v252 = v247
    end;
    g_moveUndoStack[1 + g_moveCount] = UndoHistory(g_enPassentSquare, g_castleRights, g_inCheck, g_baseEval, g_hashKeyLow, g_hashKeyHigh, g_move50, v250)
    g_moveCount = g_moveCount + 1
    g_enPassentSquare = -1
    if v246 > 0 then
        if bit32.band(v246, moveflagCastleKing) > 0 then
            if IsSquareAttackable(v248 + 1, v245) or IsSquareAttackable(v248 + 2, v245) then
                g_moveCount = g_moveCount - 1
                return false;
            end;
            local v253 = g_board[v247 + 1 + 1]
            g_hashKeyLow = bit32.bxor(g_hashKeyLow, g_zobristLow[v247 + 1 + 1][bit32.band(v253, 15) + 1])
            g_hashKeyHigh = bit32.bxor(g_hashKeyHigh, g_zobristHigh[v247 + 1 + 1][bit32.band(v253, 15) + 1])
            g_hashKeyLow = bit32.bxor(g_hashKeyLow, g_zobristLow[v247 - 1 + 1][bit32.band(v253, 15) + 1])
            g_hashKeyHigh = bit32.bxor(g_hashKeyHigh, g_zobristHigh[v247 - 1 + 1][bit32.band(v253, 15) + 1])
            g_board[v247 - 1 + 1] = v253
            g_board[v247 + 1 + 1] = pieceEmpty
            g_baseEval = g_baseEval - pieceSquareAdj[bit32.band(v253, 7) + 1][1 + iif(v244 == 0, flipTable[v247 + 1 + 1], v247 + 1)]
            g_baseEval = g_baseEval + pieceSquareAdj[bit32.band(v253, 7) + 1][1 + iif(v244 == 0, flipTable[v247 - 1 + 1], v247 - 1)]
            local v254 = g_pieceIndex[v247 + 1 + 1]
            g_pieceIndex[v247 - 1 + 1] = v254
            g_pieceList[bit32.bor(bit32.lshift(bit32.band(v253, 15), 4), v254) + 1] = v247 - 1
        elseif bit32.band(v246, moveflagCastleQueen) > 0 then
            if IsSquareAttackable(v248 - 1, v245) or IsSquareAttackable(v248 - 2, v245) then
                g_moveCount = g_moveCount - 1
                return false;
            end;
            local v255 = g_board[v247 - 2 + 1]
            g_hashKeyLow = bit32.bxor(g_hashKeyLow, g_zobristLow[v247 - 2 + 1][bit32.band(v255, 15) + 1])
            g_hashKeyHigh = bit32.bxor(g_hashKeyHigh, g_zobristHigh[v247 - 2 + 1][bit32.band(v255, 15) + 1])
            g_hashKeyLow = bit32.bxor(g_hashKeyLow, g_zobristLow[v247 + 1 + 1][bit32.band(v255, 15) + 1])
            g_hashKeyHigh = bit32.bxor(g_hashKeyHigh, g_zobristHigh[v247 + 1 + 1][bit32.band(v255, 15) + 1])
            g_board[v247 + 1 + 1] = v255
            g_board[v247 - 2 + 1] = pieceEmpty
            g_baseEval = g_baseEval - pieceSquareAdj[bit32.band(v255, 7) + 1][1 + iif(v244 == 0, flipTable[v247 - 2 + 1], v247 - 2)]
            g_baseEval = g_baseEval + pieceSquareAdj[bit32.band(v255, 7) + 1][1 + iif(v244 == 0, flipTable[v247 + 1 + 1], v247 + 1)]
            local v256 = g_pieceIndex[v247 - 2 + 1]
            g_pieceIndex[v247 + 1 + 1] = v256
            g_pieceList[bit32.bor(bit32.lshift(bit32.band(v255, 15), 4), v256) + 1] = v247 + 1
        end;
    end;
    if v250 > 0 then
        local v257 = bit32.band(v250, 15)
        g_pieceCount[v257 + 1] = g_pieceCount[v257 + 1] - 1
        local v258 = g_pieceList[bit32.bor(bit32.lshift(v257, 4), g_pieceCount[v257 + 1]) + 1]
        g_pieceIndex[v258 + 1] = g_pieceIndex[v252 + 1]
        g_pieceList[bit32.bor(bit32.lshift(v257, 4), g_pieceIndex[v258 + 1]) + 1] = v258
        g_pieceList[bit32.bor(bit32.lshift(v257, 4), g_pieceCount[v257 + 1]) + 1] = 0
        g_baseEval = g_baseEval + materialTable[bit32.band(v250, 7) + 1]
        g_baseEval = g_baseEval + pieceSquareAdj[bit32.band(v250, 7) + 1][1 + iif(v244 > 0, flipTable[v252 + 1], v252)]
        g_hashKeyLow = bit32.bxor(g_hashKeyLow, g_zobristLow[v252 + 1][v257 + 1])
        g_hashKeyHigh = bit32.bxor(g_hashKeyHigh, g_zobristHigh[v252 + 1][v257 + 1])
        g_move50 = 0
    elseif bit32.band(v251, 7) == piecePawn then
        if v249 < 0 then
            v249 = -v249
        end;
        if v249 > 16 then
            g_enPassentSquare = iif(v244 > 0, v247 + 16, v247 - 16)
        end;
        g_move50 = 0
    end;
    g_hashKeyLow = bit32.bxor(g_hashKeyLow, g_zobristLow[v248 + 1][bit32.band(v251, 15) + 1])
    g_hashKeyHigh = bit32.bxor(g_hashKeyHigh, g_zobristHigh[v248 + 1][bit32.band(v251, 15) + 1])
    g_hashKeyLow = bit32.bxor(g_hashKeyLow, g_zobristLow[v247 + 1][bit32.band(v251, 15) + 1])
    g_hashKeyHigh = bit32.bxor(g_hashKeyHigh, g_zobristHigh[v247 + 1][bit32.band(v251, 15) + 1])
    g_hashKeyLow = bit32.bxor(g_hashKeyLow, g_zobristBlackLow)
    g_hashKeyHigh = bit32.bxor(g_hashKeyHigh, g_zobristBlackHigh)
    g_castleRights = bit32.band(g_castleRights, (bit32.band(g_castleRightsMask[v248 + 1], g_castleRightsMask[v247 + 1])))
    g_baseEval = g_baseEval - pieceSquareAdj[bit32.band(v251, 7) + 1][1 + iif(v244 == 0, flipTable[v248 + 1], v248)]
    g_pieceIndex[v247 + 1] = g_pieceIndex[v248 + 1]
    g_pieceList[bit32.bor(bit32.lshift(bit32.band(v251, 15), 4), g_pieceIndex[v247 + 1]) + 1] = v247
    if bit32.band(v246, moveflagPromotion) > 0 then
        local v259 = bit32.band(v251, 4294967288)
        local v260
        if bit32.band(v246, moveflagPromoteKnight) > 0 then
            v260 = bit32.bor(v259, pieceKnight)
        elseif bit32.band(v246, moveflagPromoteQueen) > 0 then
            v260 = bit32.bor(v259, pieceQueen)
        elseif bit32.band(v246, moveflagPromoteBishop) > 0 then
            v260 = bit32.bor(v259, pieceBishop)
        else
            v260 = bit32.bor(v259, pieceRook)
        end;
        g_hashKeyLow = bit32.bxor(g_hashKeyLow, g_zobristLow[v247 + 1][bit32.band(v251, 15) + 1])
        g_hashKeyHigh = bit32.bxor(g_hashKeyHigh, g_zobristHigh[v247 + 1][bit32.band(v251, 15) + 1])
        g_board[v247 + 1] = v260
        g_hashKeyLow = bit32.bxor(g_hashKeyLow, g_zobristLow[v247 + 1][bit32.band(v260, 15) + 1])
        g_hashKeyHigh = bit32.bxor(g_hashKeyHigh, g_zobristHigh[v247 + 1][bit32.band(v260, 15) + 1])
        g_baseEval = g_baseEval + pieceSquareAdj[bit32.band(v260, 7) + 1][1 + iif(v244 == 0, flipTable[v247 + 1], v247)]
        g_baseEval = g_baseEval - materialTable[1 + piecePawn]
        g_baseEval = g_baseEval + materialTable[bit32.band(v260, 7) + 1]
        local v261 = bit32.band(v251, 15)
        local v262 = bit32.band(v260, 15)
        g_pieceCount[v261 + 1] = g_pieceCount[v261 + 1] - 1
        local v263 = g_pieceList[bit32.bor(bit32.lshift(v261, 4), g_pieceCount[v261 + 1]) + 1]
        g_pieceIndex[v263 + 1] = g_pieceIndex[v247 + 1]
        g_pieceList[bit32.bor(bit32.lshift(v261, 4), g_pieceIndex[v263 + 1]) + 1] = v263
        g_pieceList[bit32.bor(bit32.lshift(v261, 4), g_pieceCount[v261 + 1]) + 1] = 0
        g_pieceIndex[v247 + 1] = g_pieceCount[v262 + 1]
        g_pieceList[bit32.bor(bit32.lshift(v262, 4), g_pieceIndex[v247 + 1]) + 1] = v247
        g_pieceCount[v262 + 1] = g_pieceCount[v262 + 1] + 1
    else
        g_board[v247 + 1] = g_board[v248 + 1]
        g_baseEval = g_baseEval + pieceSquareAdj[bit32.band(v251, 7) + 1][1 + iif(v244 == 0, flipTable[v247 + 1], v247)]
    end;
    g_board[v248 + 1] = pieceEmpty
    g_toMove = v245
    g_baseEval = -g_baseEval
    if bit32.band(v251, 7) > 0 == (pieceKing > 0 and true or g_inCheck) then
        if IsSquareAttackable(g_pieceList[bit32.lshift(bit32.bor(pieceKing, 8 - g_toMove), 4) + 1], v245) then
            UnmakeMove(p243)
            return false;
        end;
    else
        local v264 = g_pieceList[bit32.lshift(bit32.bor(pieceKing, 8 - g_toMove), 4) + 1]
        if ExposesCheck(v248, v264) then
            UnmakeMove(p243)
            return false;
        end;
        if v252 ~= v247 and ExposesCheck(v252, v264) then
            UnmakeMove(p243)
            return false;
        end;
    end;
    g_inCheck = false
    if v246 <= moveflagEPC then
        local v265 = g_pieceList[bit32.lshift(bit32.bor(pieceKing, g_toMove), 4) + 1]
        g_inCheck = IsSquareAttackableFrom(v265, v247)
        if not g_inCheck then
            g_inCheck = ExposesCheck(v248, v265)
            if not g_inCheck and v252 ~= v247 then
                g_inCheck = ExposesCheck(v252, v265)
            end;
        end;
    else
        g_inCheck = IsSquareAttackable(g_pieceList[bit32.lshift(bit32.bor(pieceKing, g_toMove), 4) + 1], 8 - g_toMove)
    end;
    g_repMoveStack[1 + (g_moveCount - 1)] = g_hashKeyLow
    g_move50 = g_move50 + 1
    return true;
end;
UnmakeMove = function(p266) --[[ Name: UnmakeMove ]] --[[ Line: 2109 ]]
    g_toMove = 8 - g_toMove
    g_baseEval = -g_baseEval
    g_moveCount = g_moveCount - 1
    local v267 = 8 - g_toMove
    bit32.rshift(g_toMove, 3)
    bit32.rshift(v267, 3)
    local v268 = bit32.band(p266, 16711680)
    local l_captured_0 = g_moveUndoStack[1 + g_moveCount].captured
    local v269 = bit32.band(bit32.rshift(p266, 8), 255)
    local v270 = bit32.band(p266, 255)
    local v271 = g_board[v269 + 1]
    g_enPassentSquare = g_moveUndoStack[1 + g_moveCount].ep
    g_castleRights = g_moveUndoStack[1 + g_moveCount].castleRights
    g_inCheck = g_moveUndoStack[1 + g_moveCount].inCheck
    g_baseEval = g_moveUndoStack[1 + g_moveCount].baseEval
    g_hashKeyLow = g_moveUndoStack[1 + g_moveCount].hashKeyLow
    g_hashKeyHigh = g_moveUndoStack[1 + g_moveCount].hashKeyHigh
    g_move50 = g_moveUndoStack[1 + g_moveCount].move50
    if v268 > 0 then
        if bit32.band(v268, moveflagCastleKing) > 0 then
            local v272 = g_board[v269 - 1 + 1]
            g_board[v269 + 1 + 1] = v272
            g_board[v269 - 1 + 1] = pieceEmpty
            local v273 = g_pieceIndex[v269 - 1 + 1]
            g_pieceIndex[v269 + 1 + 1] = v273
            g_pieceList[bit32.bor(bit32.lshift(bit32.band(v272, 15), 4), v273) + 1] = v269 + 1
        elseif bit32.band(v268, moveflagCastleQueen) > 0 then
            local v274 = g_board[v269 + 1 + 1]
            g_board[v269 - 2 + 1] = v274
            g_board[v269 + 1 + 1] = pieceEmpty
            local v275 = g_pieceIndex[v269 + 1 + 1]
            g_pieceIndex[v269 - 2 + 1] = v275
            g_pieceList[bit32.bor(bit32.lshift(bit32.band(v274, 15), 4), v275) + 1] = v269 - 2
        end;
    end;
    if bit32.band(v268, moveflagPromotion) > 0 then
        v271 = bit32.bor(bit32.band(g_board[v269 + 1], 4294967288), piecePawn)
        g_board[v270 + 1] = v271
        local v276 = bit32.band(g_board[v270 + 1], 15)
        local v277 = bit32.band(g_board[v269 + 1], 15)
        g_pieceCount[v277 + 1] = g_pieceCount[v277 + 1] - 1
        local v278 = g_pieceList[bit32.bor(bit32.lshift(v277, 4), g_pieceCount[v277 + 1]) + 1]
        g_pieceIndex[v278 + 1] = g_pieceIndex[v269 + 1]
        g_pieceList[bit32.bor(bit32.lshift(v277, 4), g_pieceIndex[v278 + 1]) + 1] = v278
        g_pieceList[bit32.bor(bit32.lshift(v277, 4), g_pieceCount[v277 + 1]) + 1] = 0
        g_pieceIndex[v269 + 1] = g_pieceCount[v276 + 1]
        g_pieceList[bit32.bor(bit32.lshift(v276, 4), g_pieceIndex[v269 + 1]) + 1] = v269
        g_pieceCount[v276 + 1] = g_pieceCount[v276 + 1] + 1
    else
        g_board[v270 + 1] = g_board[v269 + 1]
    end;
    local v279
    if bit32.band(v268, moveflagEPC) > 0 then
        if g_toMove == colorWhite then
            v279 = v269 + 16
        else
            v279 = v269 - 16
        end;
        g_board[v269 + 1] = pieceEmpty
    else
        v279 = v269
    end;
    g_board[v279 + 1] = l_captured_0
    g_pieceIndex[v270 + 1] = g_pieceIndex[v269 + 1]
    g_pieceList[bit32.bor(bit32.lshift(bit32.band(v271, 15), 4), g_pieceIndex[v270 + 1]) + 1] = v270
    if l_captured_0 > 0 then
        local v280 = bit32.band(l_captured_0, 15)
        g_pieceIndex[v279 + 1] = g_pieceCount[v280 + 1]
        g_pieceList[bit32.bor(bit32.lshift(v280, 4), g_pieceCount[v280 + 1]) + 1] = v279
        g_pieceCount[v280 + 1] = g_pieceCount[v280 + 1] + 1
    end;
end;
ExposesCheck = function(p281, p282) --[[ Name: ExposesCheck ]] --[[ Line: 2213 ]]
    local v283 = p282 - p281 + 128
    if bit32.band(g_vectorDelta[1 + v283].pieceMask[1], (bit32.lshift(1, pieceQueen))) == 0 then
        return false;
    else
        local l_delta_1 = g_vectorDelta[1 + v283].delta
        local v284 = p282 + l_delta_1
        while g_board[v284 + 1] == 0 do
            v284 = v284 + l_delta_1
        end;
        local v285 = g_board[v284 + 1]
        if bit32.band(bit32.band(v285, (bit32.bxor(g_board[1 + p282], 24))), 24) == 0 then
            return false;
        else
            return bit32.band(g_vectorDelta[v284 - p282 + 128 + 1].pieceMask[bit32.band(bit32.rshift(v285, 3), 1) + 1], (bit32.lshift(1, (bit32.band(v285, 7))))) ~= 0;
        end;
    end;
end;
IsSquareOnPieceLine = function(p286, p287) --[[ Name: IsSquareOnPieceLine ]] --[[ Line: 2242 ]]
    local v288 = p287 - p286 + 128
    local v289 = g_board[1 + p287]
    return bit32.band(g_vectorDelta[1 + v288].pieceMask[bit32.band(bit32.rshift(v289, 3), 1) + 1], (bit32.lshift(1, (bit32.band(v289, 7))))) > 0;
end;
GetMoveSAN = function(p290, p291) --[[ Name: GetMoveSAN ]] --[[ Line: 2251 ]]
    local v292 = bit32.band(p290, 255)
    local v293 = bit32.band(bit32.rshift(p290, 8), 255)
    if bit32.band(p290, moveflagCastleKing) > 0 then
        return "O-O";
    end;
    if bit32.band(p290, moveflagCastleQueen) > 0 then
        return "O-O-O";
    end;
    local v294 = bit32.band(g_board[v292 + 1], 7)
    local v295 = string.upper(PieceCharList[v294 + 1])
    local v296 = false
    local v297 = true
    local v298 = true
    if p291 == nil then
        p291 = GenerateValidMoves()
    end;
    for v299 = 0, #p291 - 1 do
        local v300 = bit32.band(p291[1 + v299], 255)
        if v300 ~= v292 and (bit32.band(bit32.rshift(p291[1 + v299], 8), 255) == v293 and bit32.band(g_board[v300 + 1], 7) == v294) then
            v296 = true
            if bit32.band(v300, 240) == bit32.band(v292, 240) then
                v297 = false
            end;
            if bit32.band(v300, 15) == bit32.band(v292, 15) then
                v298 = false
            end;
        end;
    end;
    if v296 then
        if v298 then
            v295 = v295 .. string.sub(FormatSquare(v292), 1, 1)
        elseif v297 then
            v295 = v295 .. string.sub(FormatSquare(v292), 2, 2)
        else
            v295 = v295 .. FormatSquare(v292)
        end;
    elseif v294 == piecePawn and g_board[v293 + 1] ~= 0 then
        v295 = v295 .. string.sub(FormatSquare(v292), 1, 1)
    end;
    if g_board[v293 + 1] ~= 0 or bit32.band(p290, moveflagEPC) > 0 then
        v295 = v295 .. "x"
    end;
    local v301 = v295 .. FormatSquare(v293)
    if bit32.band(p290, moveflagPromotion) > 0 then
        if bit32.band(p290, moveflagPromoteBishop) > 0 then
            v301 = v301 .. "=B"
        elseif bit32.band(p290, moveflagPromoteKnight) > 0 then
            v301 = v301 .. "=N"
        elseif bit32.band(p290, moveflagPromoteQueen) > 0 then
            v301 = v301 .. "=Q"
        else
            v301 = v301 .. "=R"
        end;
    end;
    MakeMove(p290)
    if g_inCheck then
        v301 = v301 .. iif(#GenerateValidMoves() == 0, "#", "+")
    end;
    UnmakeMove(p290)
    return v301;
end;
GenerateMove = function(p302, p303) --[[ Name: GenerateMove ]] --[[ Line: 2346 ]]
    return bit32.bor(p302, (bit32.lshift(p303, 8)));
end;
GenerateMove2 = function(p304, p305, p306) --[[ Name: GenerateMove2 ]] --[[ Line: 2352 ]]
    return bit32.bor(p304, (bit32.bor(bit32.lshift(p305, 8), p306)));
end;
GenerateValidMoves = function() --[[ Name: GenerateValidMoves ]] --[[ Line: 2358 ]]
    local v307 = {}
    GenerateCaptureMoves(v307)
    GenerateAllMoves(v307)
    local v308 = {}
    for v309 = #v307 - 1, 0, -1 do
        if MakeMove(v307[1 + v309]) then
            v308[#v308 + 1] = v307[1 + v309]
            UnmakeMove(v307[1 + v309])
        end;
    end;
    return v308;
end;
GenerateAllMoves = function(p310) --[[ Name: GenerateAllMoves ]] --[[ Line: 2377 ]]
    local v311 = bit32.lshift(bit32.bor(g_toMove, 1), 4)
    local v312 = g_pieceList[v311 + 1]
    local v313 = v311 + 1
    while v312 ~= 0 do
        GeneratePawnMoves(p310, v312)
        v312 = g_pieceList[v313 + 1]
        v313 = v313 + 1
    end;
    local v314 = bit32.lshift(bit32.bor(g_toMove, 2), 4)
    local v315 = g_pieceList[v314 + 1]
    local v316 = v314 + 1
    while v315 ~= 0 do
        MSt(p310, 1, v315, 31, nil)
        MSt(p310, 1, v315, 33, nil)
        MSt(p310, 1, v315, 14, nil)
        MSt(p310, 1, v315, -14, nil)
        MSt(p310, 1, v315, -31, nil)
        MSt(p310, 1, v315, -33, nil)
        MSt(p310, 1, v315, 18, nil)
        MSt(p310, 1, v315, -18, nil)
        v315 = g_pieceList[v316 + 1]
        v316 = v316 + 1
    end;
    local v317 = bit32.lshift(bit32.bor(g_toMove, 3), 4)
    local v318 = g_pieceList[v317 + 1]
    local v319 = v317 + 1
    while v318 ~= 0 do
        MSt(p310, 2, v318, -15, nil)
        MSt(p310, 2, v318, -17, nil)
        MSt(p310, 2, v318, 15, nil)
        MSt(p310, 2, v318, 17, nil)
        v318 = g_pieceList[v319 + 1]
        v319 = v319 + 1
    end;
    local v320 = bit32.lshift(bit32.bor(g_toMove, 4), 4)
    local v321 = g_pieceList[v320 + 1]
    local v322 = v320 + 1
    while v321 ~= 0 do
        MSt(p310, 2, v321, -1, nil)
        MSt(p310, 2, v321, 1, nil)
        MSt(p310, 2, v321, 16, nil)
        MSt(p310, 2, v321, -16, nil)
        v321 = g_pieceList[v322 + 1]
        v322 = v322 + 1
    end;
    local v323 = bit32.lshift(bit32.bor(g_toMove, 5), 4)
    local v324 = g_pieceList[v323 + 1]
    local v325 = v323 + 1
    while v324 ~= 0 do
        MSt(p310, 2, v324, -15, nil)
        MSt(p310, 2, v324, -17, nil)
        MSt(p310, 2, v324, 15, nil)
        MSt(p310, 2, v324, 17, nil)
        MSt(p310, 2, v324, -1, nil)
        MSt(p310, 2, v324, 1, nil)
        MSt(p310, 2, v324, 16, nil)
        MSt(p310, 2, v324, -16, nil)
        v324 = g_pieceList[v325 + 1]
        v325 = v325 + 1
    end;
    local v326 = g_pieceList[bit32.lshift(bit32.bor(g_toMove, 6), 4) + 1]
    MSt(p310, 1, v326, -15, nil)
    MSt(p310, 1, v326, -17, nil)
    MSt(p310, 1, v326, 15, nil)
    MSt(p310, 1, v326, 17, nil)
    MSt(p310, 1, v326, -1, nil)
    MSt(p310, 1, v326, 1, nil)
    MSt(p310, 1, v326, -16, nil)
    MSt(p310, 1, v326, 16, nil)
    if not g_inCheck then
        local v327 = g_castleRights
        if g_toMove == 0 then
            v327 = bit32.rshift(v327, 2)
        end;
        if bit32.band(v327, 1) > 0 and (g_board[v326 + 1 + 1] == pieceEmpty and g_board[v326 + 2 + 1] == pieceEmpty) then
            p310[#p310 + 1] = GenerateMove2(v326, v326 + 2, moveflagCastleKing)
        end;
        if bit32.band(v327, 2) > 0 and (g_board[v326 - 1 + 1] == pieceEmpty and (g_board[v326 - 2 + 1] == pieceEmpty and g_board[v326 - 3 + 1] == pieceEmpty)) then
            p310[#p310 + 1] = GenerateMove2(v326, v326 - 2, moveflagCastleQueen)
        end;
    end;
end;
MSt = function(p328, p329, p330, p331, p332) --[[ Name: MSt ]] --[[ Line: 2491 ]]
    local v333 = p330 + p331
    if p329 == 1 then
        if p332 == nil and g_board[1 + v333] == 0 or p332 ~= nil and bit32.band(g_board[1 + v333], p332) > 0 then
            p328[#p328 + 1] = GenerateMove(p330, v333)
            return;
        end;
    elseif p329 == 2 then
        while g_board[1 + v333] == 0 do
            p328[#p328 + 1] = GenerateMove(p330, v333)
            v333 = v333 + p331
        end;
    elseif p329 == 3 then
        while g_board[1 + v333] == 0 do
            v333 = v333 + p331
        end;
        if bit32.band(g_board[1 + v333], p332) > 0 then
            p328[#p328 + 1] = GenerateMove(p330, v333)
        end;
    end;
end;
GenerateCaptureMoves = function(p334) --[[ Name: GenerateCaptureMoves ]] --[[ Line: 2523 ]]
    local v335 = iif(g_toMove == 8, -16, 16)
    local v336 = iif(g_toMove == 8, 16, 8)
    local v337 = bit32.lshift(bit32.bor(g_toMove, 1), 4)
    local v338 = g_pieceList[v337 + 1]
    local v339 = v337 + 1
    while v338 ~= 0 do
        local v340 = v338 + v335 - 1
        if bit32.band(g_board[v340 + 1], v336) > 0 then
            MovePawnTo(p334, v338, v340)
        end;
        local v341 = v338 + v335 + 1
        if bit32.band(g_board[v341 + 1], v336) > 0 then
            MovePawnTo(p334, v338, v341)
        end;
        v338 = g_pieceList[v339 + 1]
        v339 = v339 + 1
    end;
    if g_enPassentSquare ~= -1 then
        local v342 = iif(g_toMove == colorWhite, -16, 16)
        local v343 = bit32.bor(g_toMove, piecePawn)
        local v344 = g_enPassentSquare - (v342 + 1)
        if bit32.band(g_board[v344 + 1], 15) == v343 then
            p334[#p334 + 1] = GenerateMove2(v344, g_enPassentSquare, moveflagEPC)
        end;
        local v345 = g_enPassentSquare - (v342 - 1)
        if bit32.band(g_board[v345 + 1], 15) == v343 then
            p334[#p334 + 1] = GenerateMove2(v345, g_enPassentSquare, moveflagEPC)
        end;
    end;
    local v346 = bit32.lshift(bit32.bor(g_toMove, 2), 4)
    local v347 = g_pieceList[v346 + 1]
    local v348 = v346 + 1
    while v347 ~= 0 do
        MSt(p334, 1, v347, 31, v336)
        MSt(p334, 1, v347, 33, v336)
        MSt(p334, 1, v347, 14, v336)
        MSt(p334, 1, v347, -14, v336)
        MSt(p334, 1, v347, -31, v336)
        MSt(p334, 1, v347, -33, v336)
        MSt(p334, 1, v347, 18, v336)
        MSt(p334, 1, v347, -18, v336)
        v347 = g_pieceList[v348 + 1]
        v348 = v348 + 1
    end;
    local v349 = bit32.lshift(bit32.bor(g_toMove, 3), 4)
    local v350 = g_pieceList[v349 + 1]
    local v351 = v349 + 1
    while v350 ~= 0 do
        MSt(p334, 3, v350, -15, v336)
        MSt(p334, 3, v350, -17, v336)
        MSt(p334, 3, v350, 15, v336)
        MSt(p334, 3, v350, 17, v336)
        v350 = g_pieceList[v351 + 1]
        v351 = v351 + 1
    end;
    local v352 = bit32.lshift(bit32.bor(g_toMove, 4), 4)
    local v353 = g_pieceList[v352 + 1]
    local v354 = v352 + 1
    while v353 ~= 0 do
        MSt(p334, 3, v353, -1, v336)
        MSt(p334, 3, v353, 1, v336)
        MSt(p334, 3, v353, -16, v336)
        MSt(p334, 3, v353, 16, v336)
        v353 = g_pieceList[v354 + 1]
        v354 = v354 + 1
    end;
    local v355 = bit32.lshift(bit32.bor(g_toMove, 5), 4)
    local v356 = g_pieceList[v355 + 1]
    local v357 = v355 + 1
    while v356 ~= 0 do
        MSt(p334, 3, v356, -15, v336)
        MSt(p334, 3, v356, -17, v336)
        MSt(p334, 3, v356, 15, v336)
        MSt(p334, 3, v356, 17, v336)
        MSt(p334, 3, v356, -1, v336)
        MSt(p334, 3, v356, 1, v336)
        MSt(p334, 3, v356, -16, v336)
        MSt(p334, 3, v356, 16, v336)
        v356 = g_pieceList[v357 + 1]
        v357 = v357 + 1
    end;
    local v358 = g_pieceList[bit32.lshift(bit32.bor(g_toMove, 6), 4) + 1]
    MSt(p334, 1, v358, -15, v336)
    MSt(p334, 1, v358, -17, v336)
    MSt(p334, 1, v358, 15, v336)
    MSt(p334, 1, v358, 17, v336)
    MSt(p334, 1, v358, -1, v336)
    MSt(p334, 1, v358, 1, v336)
    MSt(p334, 1, v358, -16, v336)
    MSt(p334, 1, v358, 16, v336)
end;
MovePawnTo = function(p359, p360, p361) --[[ Name: MovePawnTo ]] --[[ Line: 2647 ]]
    local v362 = bit32.band(p361, 240)
    if v362 == 144 or v362 == 32 then
        p359[#p359 + 1] = GenerateMove2(p360, p361, (bit32.bor(moveflagPromotion, moveflagPromoteQueen)))
        p359[#p359 + 1] = GenerateMove2(p360, p361, (bit32.bor(moveflagPromotion, moveflagPromoteKnight)))
        p359[#p359 + 1] = GenerateMove2(p360, p361, (bit32.bor(moveflagPromotion, moveflagPromoteBishop)))
        p359[#p359 + 1] = GenerateMove2(p360, p361, moveflagPromotion)
    else
        p359[#p359 + 1] = GenerateMove2(p360, p361, 0)
    end;
end;
GeneratePawnMoves = function(p363, p364) --[[ Name: GeneratePawnMoves ]] --[[ Line: 2662 ]]
    local v365 = bit32.band(g_board[1 + p364], colorWhite)
    local v366 = iif(v365 == colorWhite, -16, 16)
    local v367 = p364 + v366
    if g_board[1 + v367] == 0 then
        MovePawnTo(p363, p364, v367, pieceEmpty)
        if bit32.band(p364, 240) == 48 and v365 ~= colorWhite or bit32.band(p364, 240) == 128 and v365 == colorWhite then
            local v368 = v367 + v366
            if g_board[1 + v368] == 0 then
                p363[#p363 + 1] = GenerateMove(p364, v368)
            end;
        end;
    end;
end;
See = function(p369) --[[ Name: See ]] --[[ Line: 2685 ]]
    local v370 = bit32.band(p369, 255)
    local v371 = bit32.band(bit32.rshift(p369, 8), 255)
    local v372 = g_board[v370 + 1]
    local v373 = iif(bit32.band(v372, colorWhite) > 0, colorWhite, 0)
    local v374 = 8 - v373
    local v375 = {}
    local v376 = {}
    local v377 = g_seeValues[bit32.band(v372, 15) + 1]
    local v378 = g_seeValues[bit32.band(g_board[v371 + 1], 15) + 1]
    local v379 = v378 - v377
    local v380 = iif(bit32.band(v372, colorWhite) > 0, -16, 16)
    local v381 = v377 - v378
    if v377 <= v378 then
        return true;
    elseif bit32.rshift(p369, 16) > 0 then
        return true;
    elseif bit32.band(g_board[1 + (v371 + v380 + 1)], 15) == bit32.bor(piecePawn, v374) or bit32.band(g_board[1 + (v371 + v380 - 1)], 15) == bit32.bor(piecePawn, v374) then
        return false;
    else
        SeeAddKnightAttacks(v371, v374, v375)
        if #v375 == 0 or g_seeValues[1 + pieceKnight] >= v381 then
            g_board[v370 + 1] = 0
            for v382 = pieceBishop, pieceQueen do
                if SeeAddSliderAttacks(v371, v374, v375, v382) and g_seeValues[1 + v382] < v381 then
                    g_board[v370 + 1] = v372
                    return false;
                end;
            end;
            if bit32.band(g_board[1 + (v371 - v380 + 1)], 15) == bit32.bor(piecePawn, v373) or bit32.band(g_board[1 + (v371 - v380 - 1)], 15) == bit32.bor(piecePawn, v373) then
                g_board[v370 + 1] = v372
                return true;
            else
                SeeAddSliderAttacks(v371, v374, v375, pieceKing)
                SeeAddKnightAttacks(v371, v373, v376)
                for v383 = pieceBishop, pieceKing do
                    SeeAddSliderAttacks(v371, v373, v376, v383)
                end;
                g_board[v370 + 1] = v372
                while true do
                    local v384 = 1000
                    local v385 = -1
                    for v386 = 0, #v375 - 1 do
                        if v375[1 + v386] ~= 0 then
                            local v387 = g_seeValues[bit32.band(g_board[1 + v375[1 + v386]], 7) + 1]
                            if v387 < v384 then
                                v385 = v386
                                v384 = v387
                            end;
                        end;
                    end;
                    if v385 == -1 then
                        return true;
                    end;
                    local v388 = v379 + v384
                    if v388 < 0 then
                        return false;
                    end;
                    local v389 = v375[v385 + 1]
                    v375[v385 + 1] = 0
                    SeeAddXrayAttack(v371, v389, v373, v376, v375)
                    local v390 = 1000
                    local v391 = -1
                    for v392 = 0, #v376 - 1 do
                        if v376[1 + v392] ~= 0 then
                            local v393 = g_seeValues[bit32.band(g_board[1 + v376[1 + v392]], 7) + 1]
                            if v393 < v390 then
                                v391 = v392
                                v390 = v393
                            end;
                        end;
                    end;
                    if v391 == -1 then
                        return false;
                    end;
                    v379 = v388 - v390
                    if v379 >= 0 then
                        return true;
                    end;
                    local v394 = v376[v391 + 1]
                    v376[v391 + 1] = 0
                    SeeAddXrayAttack(v371, v394, v373, v376, v375)
                end;
            end;
        else
            return false;
        end;
    end;
end;
SeeAddXrayAttack = function(p395, p396, p397, p398, p399) --[[ Name: SeeAddXrayAttack ]] --[[ Line: 2842 ]]
    local v400 = -g_vectorDelta[1 + (p396 - p395 + 128)].delta
    if v400 ~= 0 then
        local v401 = p396 + v400
        while g_board[1 + v401] == 0 do
            v401 = v401 + v400
        end;
        if bit32.band(g_board[1 + v401], 24) > 0 and IsSquareOnPieceLine(p395, v401) then
            if bit32.band(g_board[1 + v401], 8) == p397 then
                p398[#p398 + 1] = v401
                return;
            end;
            p399[#p399 + 1] = v401
        end;
    end;
end;
SeeAddKnightAttacks = function(p402, p403, p404) --[[ Name: SeeAddKnightAttacks ]] --[[ Line: 2864 ]]
    local v405 = bit32.lshift(bit32.bor(p403, pieceKnight), 4)
    local v406 = g_pieceList[v405 + 1]
    local v407 = v405 + 1
    while v406 ~= 0 do
        if IsSquareOnPieceLine(p402, v406) then
            p404[#p404 + 1] = v406
        end;
        v406 = g_pieceList[v407 + 1]
        v407 = v407 + 1
    end;
end;
SeeAddSliderAttacks = function(p408, p409, p410, p411) --[[ Name: SeeAddSliderAttacks ]] --[[ Line: 2880 ]]
    local v412 = bit32.lshift(bit32.bor(p409, p411), 4)
    local v413 = g_pieceList[v412 + 1]
    local v414 = v412 + 1
    local v415 = false
    while v413 ~= 0 do
        if IsSquareAttackableFrom(p408, v413) then
            p410[#p410 + 1] = v413
            v415 = true
        end;
        v413 = g_pieceList[v414 + 1]
        v414 = v414 + 1
    end;
    return v415;
end;
FormatMove = function(p416) --[[ Name: FormatMove ]] --[[ Line: 2901 ]]
    local v417 = FormatSquare((bit32.band(p416, 255))) .. FormatSquare((bit32.band(bit32.rshift(p416, 8), 255)))
    if bit32.band(p416, moveflagPromotion) > 0 then
        if bit32.band(p416, moveflagPromoteBishop) > 0 then
            return v417 .. "b";
        end;
        if bit32.band(p416, moveflagPromoteKnight) > 0 then
            return v417 .. "n";
        end;
        if bit32.band(p416, moveflagPromoteQueen) > 0 then
            return v417 .. "q";
        end;
        v417 = v417 .. "r"
    end;
    return v417;
end;
GetMoveFromString = function(p418) --[[ Name: GetMoveFromString ]] --[[ Line: 2923 ]]
    local v419 = GenerateValidMoves()
    for v420 = 0, #v419 - 1 do
        if FormatMove(v419[1 + v420]) == p418 then
            return v419[1 + v420];
        end;
    end;
    print("busted! ->" .. p418 .. " fen:" + GetFen())
end;
PVFromHash = function(p421, p422) --[[ Name: PVFromHash ]] --[[ Line: 2936 ]]
    local v423
    if p422 == 0 then
        v423 = ""
    else
        v423 = " " .. GetMoveSAN(p421)
        MakeMove(p421)
        local v424 = g_hashTable[bit32.band(g_hashKeyLow, g_hashMask) + 1]
        if v424 ~= nil and (v424.lock == g_hashKeyHigh and v424.bestMove ~= nil) then
            v423 = v423 .. PVFromHash(v424.bestMove, p422 - 1)
        end;
        UnmakeMove(p421)
    end;
    return v423;
end;
BuildPVMessage = function(p425, p426, p427) --[[ Name: BuildPVMessage ]] --[[ Line: 2957 ]]
    return "Ply:" .. p427 .. " Score:" .. string.format("%d", p426) .. " Nodes:" .. string.format("%d", g_nodeCount + g_qNodeCount) .. " " .. PVFromHash(p425, 15);
end;
finishPlyCallback = function(p428, p429, p430) --[[ Name: finishPlyCallback ]] --[[ Line: 2966 ]]
    if p428 ~= nil and p428 ~= 0 then
        print(BuildPVMessage(p428, p429, p430))
    end;
end;
finishMoveCallback = function(p431, p432, _) --[[ Name: finishMoveCallback ]] --[[ Line: 2974 ]]
    if p431 ~= nil and p431 ~= 0 then
        MakeMove(p431)
        g_foundmove = p431
        g_foundvalue = p432
    end;
end;
autogame = function() --[[ Name: autogame ]] --[[ Line: 2986 ]]
    local v433 = -1
    local v434 = 0
    while true do
        v433 = -v433
        if v433 > 0 then
            v434 = v434 + 1
            print("Move: " .. string.format("%d", v434) .. ". ")
        end;
        Search(8)
        if g_foundmove == 0 then
            return;
        end;
    end;
end;
InitializeEval()
ResetGame()
return {
    ["GetBestMoveFromFEN"] = function(_, p435, p436) --[[ Name: GetBestMoveFromFEN ]] --[[ Line: 3022 ]]
        InitializeFromFen(p435)
        g_timeout = p436
        Search(8)
        if g_foundmove == 0 then
            return nil;
        else
            return FormatMove(g_foundmove), g_foundvalue;
        end;
    end
};
