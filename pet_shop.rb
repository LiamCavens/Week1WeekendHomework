def pet_shop_name(pet_shop)
    return pet_shop[:name]

end

def total_cash(pet_shop)
   return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, number)
   return pet_shop[:admin][:total_cash] += number
   return pet_shop[:admin][:total_cash] -= number
end

def pets_sold(pet_shop)
    return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, pet_sold)
    return pet_shop[:admin][:pets_sold] += pet_sold
end

def stock_count(pet_shop)
    return pet_shop[:pets].count()
end

def pets_by_breed(pet_shop, pet_breed)
   pets = []
   for pet in pet_shop[:pets]
     if pet_breed == pet[:breed]
        pets.push(pet)
     end
   end
   return pets
end

def find_pet_by_name(pet_shop, pet_name)
   for pet in pet_shop[:pets]
     if pet_name == pet[:name]
        return pet
     end
    end  
    return nil
end

def remove_pet_by_name(pet_shop, pet_name)
    for pets in pet_shop[:pets] do
        pets.delete_if{pets[:name] == pet_name}
    end
end

def add_pet_to_stock(pet_shop, new_pet)
    new_pet = 1
    return pet_shop[:pets].count() += new_pet
end