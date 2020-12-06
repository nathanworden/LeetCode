def stringsRearrangement(inputArray)
  perms = inputArray.permutation.to_a
  perms.any? do |set|
      all_elements_differ_by_one = true
      set.each_with_index do |str, idx|
          if set[idx + 1]
              if only_diff_by_one(str, set[idx+1])
              else
                  all_elements_differ_by_one = false
                  break
              end
          end
      end  
      puts
      all_elements_differ_by_one
  end
end

def only_diff_by_one(str1, str2)
  i = 0
  diffs = 0
  while i < str1.length
      diffs += 1 if str1[i] != str2[i]
      i += 1
  end 
  diffs == 1
end
