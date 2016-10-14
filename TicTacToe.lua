--
-- Created by IntelliJ IDEA.
-- User: Sebastian
-- Date: 14.10.2016
-- Time: 21:14
-- To change this template use File | Settings | File Templates.
--

boardSize = 3

player1 = "x"
player2 = "o"
empty = " "
horizontalSeparator = "-"
verticalSeparator = "|"

board = {}
for i = 0, (boardSize - 1) do
    board[i] = {}
    for j = 0, (boardSize -1) do
        board[i][j] = empty
    end
end

function getPiece(x,y)
    if (x < boardSize and x > -1 and y < boardSize and y > -1) then
        if board[x][y] ~= nil then
                return board[x][y]
        else return empty
        end
    else
        return empty
    end
end

function isEmpty(x,y)
    return getPiece(x,y) == empty
end

function placePiece(x, y, piece)
    if isEmpty(x,y) then
        board[x][y] = piece
        return true
    else
        return false
    end
end

function fullBoard()
    for i = 0, (boardSize - 1) do
        for j = 0, (boardSize - 1) do
            if isEmpty(i,j) then
                return false
            end
        end
    end
end

function displayBoard()
    io.write("*---*")
    io.write("\n")
    for i = 0, (boardSize -1) do
        local row = "|"
        for j = 0, (boardSize -1) do
            row = row ..  getPiece(i,j)
        end
        io.write(row .. "|")
        io.write("\n")
    end
    io.write("*---*")
end

function getRow(rowNumber)
    local row = ""
    for i = 0, (boardSize-1) do
        row = row .. board[rowNumber][i]
    end
    return row
end

function getColumn(columnNumber)
    local column = ""
    for i in board do

    end
end

function getDiagonalA()
    row = ""
    row = row .. board[0][0]
    row = row .. board[1][1]
    row = row .. board[2][2]
    return row
end

function getDiagonalB()
    return board[0][0] .. board[1][1] .. board[2][0]
    -- return row
end

placePiece(1,0,player1)
placePiece(1,1,player2)
placePiece(2,2,player1)
displayBoard()
io.write("\n")
io.write(getDiagonalA())
