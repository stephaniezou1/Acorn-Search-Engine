class IsEmailFormat < ActiveModel::EachValidator
    
    def validate_each(record, attribute, value)
        symbol = value.scan(/@/).length
        if symbol = 0
            record.errors.add(attribute, :blank, message: "Please use a valid email address")
        end
    end
    
end