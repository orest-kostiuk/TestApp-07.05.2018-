module AcceptanceHelper
	def sign_in(user)
		visit new_user_session_path
		fill_in 'Email', with: user.email
		fill_in 'Password', with: user.password
		click_on 'Log in'
	end
	def sign_up(user)
		visit new_user_registration_path
		fill_in 'Email', with: user[:email]
		fill_in 'First name', with: user[:first_name]
		fill_in 'Last name', with: user[:last_name]
		fill_in 'Password', with: user[:password]
		fill_in 'Password confirmation', with: user[:password]
		click_on 'Sign up'
	end
	def create_post(name)
		visit root_path
		click_on 'Create Post'
		fill_in 'Name', with: name
		fill_in 'Content', with: 'First Post bla bla bla'
		click_on 'Create post'
	end
end