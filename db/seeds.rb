puts "seeding test admin account:"
    account = Account.new
    account.email = 'swift.x@yahoo.com'
    account.password = '123123'
    account.account_type = 'admin'
    account.save!
puts "seeding admin account done."

puts "seeding test user account:"
    account = Account.new
    account.email = 'swift.x@yahoo.com'
    account.password = '123123'
    account.account_type = 'user'
    account.save!
puts "seeding user account done."


puts "seeding test watermeter:"
    watermeter = Watermeter.new
    watermeter.wm_model = 'PG-15A'
    watermeter.wm_factory_number = '555444'
    watermeter.wm_diameter = '15'
    watermeter.wm_address = 'пгт Сергеевка, ул. Гагарина,1'
    watermeter.wm_make_date = '2021-01-01'
    watermeter.wm_install_date = '2021-02-01'
    watermeter.wm_stan = '1'
    watermeter.wm_tu_number = '115'
    watermeter.wm_tu_date = '2021-02-01'
    watermeter.wm_plomba_type = '1'
    watermeter.wm_poverka_interval = '3'
    watermeter.wm_poverka_last_date = '2021-02-01'
    watermeter.wm_poverka_next_date = '2023-02-01'
    watermeter.wm_control_check_date = '2021-02-01'
    watermeter.wm_control_check_params = '1'
    watermeter.wm_last_accept_report_date = '2021-02-01'
    watermeter.wm_last_accept_report_params = '2'
    watermeter.wm_last_sent_report_date = '2021-02-01'
    watermeter.wm_last_sent_report_params = '3'
    watermeter.wm_last_sent_report_stan = '1'
    watermeter.account_id = '1'
    watermeter.save!
puts "seeding watermeter done."

puts "seeding Vodokanal information"
    vodokanal = Vodokanal.new
    vodokanal.full_name = 'КП "Білгород-Дністровськводоканал"'
    vodokanal.short_name = 'КП "БДВК"'
    vodokanal.address = 'Одеська обл, м.Білгород-Дністровський, пров. Водопровідний, 1'
    vodokanal.tel_1 = '+38-068-022-50-17'
    vodokanal.tel_2 = '+38-048-49-2-88-77'
    vodokanal.tel_3 = '+38-048-49-3-50-24'
    vodokanal.email = 'info@bdvk.com.ua'
    vodokanal.director = 'Галат Игорь Владимирович'
    vodokanal.acounter = 'Наливайко Клавдия Петровна'
    vodokanal.information = 'Предприятие предоставляет услуги водоподведения и водоотведения'
    vodokanal.save!
puts "seeding Vodokanal done."

