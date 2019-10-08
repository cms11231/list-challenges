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
    (str.size-4).times do |i|
         if werds[i..i+4] == "bread"
             bread_positions.push(i)
         end
     end
     if bread_positions.size == 2
         pos1 = bread_positions[0]+5
         pos2 = bread_positions[1]-1
         return werds[pos1..pos2]
     else
         return false
     end
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




def middle_way(list1,list2)
    new_list = []
    if list1.size % 2 == 1
        middle1 = list1[list1.size/2]
        new_list.push(middle1)
    else
        middle1 = (list1[list1.size/2] + list1[list1.size/2 - 1]) / 2.0
        new_list.push(middle1)
    end
    if list2.size % 2 == 1
        middle2 = list2[list2.size/2]
        new_list.push(middle2)
    else
        middle2 = (list2[list2.size/2] + list2[list2.size/2 - 1]) / 2.0
        new_list.push(middle2)
    end
    print new_list
end

# puts middle_way([1,2,3,4,5], [3,4,4,5,5,6]) # 3,4






def count_code(str)
    count = 0
    (str.size-3).times do |i|
        slice = str[i..i+3]
        if slice[0..1] == "co" && slice[3] == "e"
            count += 1
        end
    end
    return count
end
    
#puts count_code("sobe,cobe,code")





    
def either_2_4(list)
    numbers = 0
    list.each_with_index do |num,i|
        slice = list[i..i+1]
        if slice == [2,2] || slice == [4,4]
            numbers += 1
        end
    end
    if numbers > 1
        return false
    elsif numbers == 1
        return true
    elsif numbers == 0
    return false
    end
end

puts either_2_4([1,2,2,3]) # true
puts either_2_4([1,2,3]) # false
puts either_2_4([1,2,2,3,4,4]) # false