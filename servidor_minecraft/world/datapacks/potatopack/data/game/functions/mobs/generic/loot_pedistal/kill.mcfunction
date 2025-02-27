#20hz on loot pedistals if players are near

say killing closest loot pedistal

kill @e[limit=1,sort=nearest,tag=loot_pedistal,type=marker,distance=..32]
kill @e[limit=1,sort=nearest,tag=loot_pedistal,type=item_display,distance=..32]
kill @e[limit=1,sort=nearest,tag=loot_pedistal,type=interaction,distance=..32]