class ToDoList

	def initalize(list_items)
		@items = list_items
	end

	def get_items
		@items
	end

	def add_items(new_item)
		@items << new_item
	end

	def delete_item(deleted_item)
		delete=@item.index(deleted_item)
		@item.delete_at(delete) if deleted_item != nil
	end


end
