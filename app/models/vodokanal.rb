class Vodokanal < ApplicationRecord
    
    def self.vodokanal_full_name
        Vodokanal.first.full_name
    end

    def self.vodokanal_address
        Vodokanal.first.address
    end

    def self.vodokanal_email
        Vodokanal.first.email
    end

    def self.vodokanal_tel_1
        Vodokanal.first.tel_1
    end

    def self.vodokanal_tel_2
        Vodokanal.first.tel_2
    end

    def self.vodokanal_tel_3
        Vodokanal.first.tel_3
    end

    def self.vodokanal_director
        Vodokanal.first.director
    end

    def self.vodokanal_acounter
        Vodokanal.first.acounter
    end

    def self.vodokanal_description
        Vodokanal.first.description
    end
end
