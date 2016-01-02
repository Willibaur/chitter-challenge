describe User do
  let!(:user) do
    User.create(name: 'Name-Surname', username: 'nickname',
                email: 'test@email.com',
                password: 'secret_password',
                password_confirmation: 'secret_password')
  end

  it 'authenticates when given a valid email and password confirmation' do
    authenticated_user = User.authenticate(user.email, user.password)
    expect(authenticated_user).to eq user
  end
end
