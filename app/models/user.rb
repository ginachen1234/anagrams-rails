class User < ApplicationRecord


  def self.my_method


    my_array = []


    file = File.join(Rails.root, 'app' 'models','assets', 'files', 'test_list.txt')
    File.open.each do  |line|

    my_array << line.gsub!(/\n?/, "")



    end

    return my_array.to_s

    end


end

