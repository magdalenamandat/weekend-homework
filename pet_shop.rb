def pet_shop_name(pet_shop)
  p pet_shop[:name]
end


def total_cash(pet_shop)
  p pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)

  pet_shop[:admin][:total_cash] += cash

end

def pets_sold(pet_shop)
  p pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, sold)
  pet_shop[:admin][:pets_sold] += sold
end

def stock_count(pet_shop)
  p pet_shop[:pets].length
end

def pets_by_breed(pet_shop, breed)
  total_breed = []
  for pet in pet_shop[:pets]
    if breed == pet[:breed]
      total_breed.push(pet)
    end
  end
  return total_breed
  p total_breed
end

def find_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if name == pet[:name]
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(pet_shop, name)
  for pet in pet_shop[:pets]
    if name == pet[:name]
      pet_shop[:pets].delete(pet)
    end
  end
end

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets] << new_pet
end
