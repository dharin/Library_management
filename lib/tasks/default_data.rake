namespace :library_db do
  desc "Add staff and student users"
  task :add_members_to_library => :environment do
    lib_memebers = [
                    {first_name: 'student1',last_name: 'test',email: 'student1_test@techcompose.com',role_id: 2,password: Devise.friendly_token.first(8)},
                    {first_name: 'student2',last_name: 'test',email: 'student2_test@techcompose.com',role_id: 2,password: Devise.friendly_token.first(8)},
                    {first_name: 'student3',last_name: 'test',email: 'student3_test@techcompose.com',role_id: 2,password: Devise.friendly_token.first(8)},
                    {first_name: 'student4',last_name: 'test',email: 'student4_test@techcompose.com',role_id: 2,password: Devise.friendly_token.first(8)},
                    {first_name: 'student5',last_name: 'test',email: 'student5_test@techcompose.com',role_id: 2,password: Devise.friendly_token.first(8)},
                    {first_name: 'student6',last_name: 'test',email: 'student6_test@techcompose.com',role_id: 2,password: Devise.friendly_token.first(8)},
                    {first_name: 'student7',last_name: 'test',email: 'student7_test@techcompose.com',role_id: 2,password: Devise.friendly_token.first(8)},
                    {first_name: 'student8',last_name: 'test',email: 'student8_test@techcompose.com',role_id: 2,password: Devise.friendly_token.first(8)},
                    {first_name: 'student9',last_name: 'test',email: 'student9_test@techcompose.com',role_id: 2,password: Devise.friendly_token.first(8)},
                    {first_name: 'student10',last_name: 'test',email: 'student10_test@techcompose.com',role_id: 2,password: Devise.friendly_token.first(8)},
                    {first_name: 'staff1',last_name: 'test',email: 'staff1_test@techcompose.com', role_id: 1,password: Devise.friendly_token.first(8)},
                    {first_name: 'staff2',last_name: 'test',email: 'staff2_test@techcompose.com', role_id: 1,password: Devise.friendly_token.first(8)},
                    {first_name: 'staff3',last_name: 'test',email: 'staff3_test@techcompose.com', role_id: 1,password: Devise.friendly_token.first(8)},
                    {first_name: 'staff4',last_name: 'test',email: 'staff4_test@techcompose.com', role_id: 1,password: Devise.friendly_token.first(8)},
                    {first_name: 'staff5',last_name: 'test',email: 'staff5_test@techcompose.com', role_id: 1,password: Devise.friendly_token.first(8)},
                    {first_name: 'staff6',last_name: 'test',email: 'staff6_test@techcompose.com', role_id: 1,password: Devise.friendly_token.first(8)},
                    {first_name: 'staff7',last_name: 'test',email: 'staff7_test@techcompose.com', role_id: 1,password: Devise.friendly_token.first(8)},
                    {first_name: 'staff8',last_name: 'test',email: 'staff8_test@techcompose.com', role_id: 1,password: Devise.friendly_token.first(8)},
                    {first_name: 'staff9',last_name: 'test',email: 'staff9_test@techcompose.com', role_id: 1,password: Devise.friendly_token.first(8)},
                    {first_name: 'staff10',last_name: 'test',email: 'staff10_test@techcompose.com', role_id: 1,password: Devise.friendly_token.first(8)}
                  ]
    lib_memebers.each_with_index do |user,index|
      @user = User.create(user)
      p "User created #{@user.id} - #{index}"
    end
  end
end
