class User < ApplicationRecord
  devise %i[database_authenticatable registerable recoverable rememberable validatable confirmable trackable]
  rolify
end
