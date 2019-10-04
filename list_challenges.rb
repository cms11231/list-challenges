def threed(list)
    count = 0
    (list.size).times do |i|
        string = list[i..i+1]
        if string == [3, 3]
            return false
        end
        if list[i] == 3
            count += 1
        end
        if count == 3
            return true
        end
    end
    return false
end

# puts threed([1, 2, 3, 4, 5, 6]) #false
# puts threed([3, 2, 3]) #false
# puts threed([3, 4, 3, 5, 3]) #true
# puts threed([1, 2, 3, 3, 4, 5, 3, 3, 4]) #false




def same_first_last(list)
    (list.size).times do |i|
        if list.size == 0 
            return false
        end
        if list[0] == list[list.size - 1]
            return true
        end
    end
    return false
end

# puts same_first_last([1, 2, 3, 4, 5, 6, 1, 2]) #false
# puts same_first_last([]) #false
# puts same_first_last([2, 5, 4, 3, 6, 3, 2]) #true




def get_sandwich(werds)
    bread_positions = []
    (werds.size-4).times do |i|
        if werds[i..(i+4)]
            bread_positions.push(i)
end




# puts get_sandwich("breadjamsandwichsomethingoranotherbreadhellobread") #jamsandwichsomethingoranotherbreadhello
# puts get_sandwich("sandwichbreargfbreadkelsiebreadsomething") #kelsie
# puts get_sandwich("breadsomethingbutnobred") #""





def  shift_left(list)
    newlist = []
    newlist.push(list[1])
    list.size.times do |i|
        if i != i[0]
            newlist.push(list[i])
        end
    end
    newlist.push(list[0])
end

# puts shift_left([1, 2, 3, 4, 5]) # 2, 3, 4, 5, 1
