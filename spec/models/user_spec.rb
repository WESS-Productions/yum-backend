RSpec.describe User, type: :model do
  describe 'validations' do 
    it 'is valid with attributes' do 
      user = User.new(email: 'example1@example.com', password: 'password')
      expect(user).to be_valid
    end

    it 'does not allow duplicate emails' do
      User.create(email: 'example1@example.com', password: 'password')
      user = User.new(email: 'example1@example.com', password: 'password')
      user.valid?
      expect(user.errors[:email]).to include("has already been taken")
    end
    it 'is not valid if email is empty' do
      user = User.new(email: '', password: 'password')
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("is too short (minimum is 1 character)")
    end

    it 'is not valid if password is empty' do
      user = User.new(email: 'test@example.com', password: '')
      expect(user).not_to be_valid
      expect(user.errors[:password]).to include("is too short (minimum is 1 character)")
    end

    it 'is valid with non-empty email and password' do
      user = User.new(email: 'test@example.com', password: 'password')
      expect(user).to be_valid
    end
  

  end
end

