.struct Oam
    x db
    y db
    tile db
    attr db
    sizeof .db
.endst

.struct todo_BattlePlayer
    b0 ds $11
    hp db ; $11
    b12 ds $bc-$12
    ip db ; $bc
.endst