SELECT `miejscowosc` FROM `oddzialy`

INNER JOIN (
    SELECT `id_oddzialu`, COUNT(`id_obrazu`) AS `w_magazynie` FROM `obrazy` WHERE `obrazy`.`stan` LIKE "%w magazynie%" GROUP BY `id_oddzialu`
) AS `m` ON `oddzialy`.`id_oddzialu`=`m`.`id_oddzialu`

INNER JOIN (
    SELECT `id_oddzialu`, COUNT(`id_obrazu`) AS `ekspozycja _zasowa` FROM `obrazy` WHERE `obrazy`.`stan` LIKE "%ekspozycja czasowa%" GROUP BY `id_oddzialu`
) AS `c` ON `oddzialy`.`id_odzialu`=`c`.`id_oddzialu`

INNER JOIN (
    SELECT `id_oddzialu`, COUNT(`id_obrazu`) AS `ekspozycja_stala` FROM `obrazy` WHERE `obrazy`.`stan` LIKE "%ekspozycja stala%" GROUP BY `id_oddzialu`
) AS `s` ON `oddzialy`.`id_odzialu`=`s`.`id_oddzialu`

GROUP BY `oddzialy`.`id_oddzialu`;
