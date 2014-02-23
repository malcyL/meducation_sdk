module MeducationSDK
  class Resource < Loquor::Resource
    def created_at
      DateTime.parse(@data[:created_at])
    end

    def updated_at
      DateTime.parse(@data[:updated_at])
    end

    def class_for(meducation_type)
      case meducation_type
      when "Item::Comment"
        Comment
      else
        "MeducationSDK::#{meducation_type.gsub("::", "")}".constantize
      end
    end
  end
end
