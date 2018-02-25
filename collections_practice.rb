def begins_with_r(arr)
  arr.all? { |s| s.start_with?('r') }
end

def contain_a(arr)
  arr.select { |s| s.include? 'a' }
end

def first_wa(arr)
  arr.find { |s| s.to_s.start_with?('wa') }
end

def remove_non_strings(arr)
  arr.select { |e| e.is_a? String }
end

def count_elements(arr)
  arr.uniq.map { |u| u.merge({ count: arr.count(u)}) }
end

def merge_data(a, b)
  a.map do |el|
    el.merge(b[0][el[:first_name]])
  end
end

def find_cool(arr)
  arr.select { |e| e[:temperature] == 'cool' }
end

def organize_schools(hash)
  hash.inject(Hash.new {|h,k| h[k] = [] }) do |memo, (school, data)|
    memo[data[:location]] << school
    memo
  end
end
