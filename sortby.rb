def shuffle arr
	arr.sort {rand}
end

p(shuffle([1,2,3,4,5,6,7,8,9]))