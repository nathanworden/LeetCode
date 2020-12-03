def deletion_distance(str1, str2)
  arr1 = str1.split('')
  arr2 = str2.split('')
  longer = arr1.length > arr2.length ? arr1 : arr2
  shorter = arr1.length <= arr2.length ? arr1 : arr2
  deleted = []
  
  while longer != shorter || longer.length > 0 || shorter.length > 0
    puts "longer: #{longer}, shorter: #{shorter}"
    longer = longer.length > shorter.length ? longer : shorter
    shorter = longer.length <= shorter.length ? longer : shorter
    
    deleted << longer.shift
    puts "deleted: #{deleted}"
    break if longer.join('') == shorter.join('')
  end
#   deleted.map! {|char| char.ord}
  deleted.length
end

# p deletion_distance('at', 'cat')
p deletion_distance('boat', 'got')