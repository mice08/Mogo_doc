delimiter //
create trigger t_flat_update_queue
AFTER UPDATE ON flat_flats FOR EACH ROW
BEGIN replace into flat_web_queue(type,keyId) select 'room',id from flat_room where flatsid = old.id;
END;