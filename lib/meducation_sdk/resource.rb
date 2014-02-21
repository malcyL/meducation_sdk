module MeducationSDK
  class Resource < Loquor::Resource
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
