# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Rails.application.secrets.roles.each do |key,role|
	role_obj = Role.find_by_name(role) || Role.new
	if role_obj.new_record?
		role_obj.name = role
		role_obj.save
	end
end
admin_user = User.find_by_email(Rails.application.secrets.smtp_email) || User.new
if admin_user.new_record?
	admin_user.first_name = 'admin'
	admin_user.last_name = 'admin'
	admin_user.email = Rails.application.secrets.smtp_email
	admin_user.password = Rails.application.secrets.smtp_password
	admin_user.password_confirmation = Rails.application.secrets.smtp_password
	admin_user.is_admin = true
	admin_user.role_id = Role.find_by_name('staff').id
	admin_user.save(validate: false)
end
