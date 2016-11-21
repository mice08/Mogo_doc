/* Database name `mogoroomdb`, flat_flats表floorNum值 */
USE mogoroomdb;

UPDATE flat_flats SET floorNum = LEFT(roomNum,2) WHERE floorNum IS NULL;