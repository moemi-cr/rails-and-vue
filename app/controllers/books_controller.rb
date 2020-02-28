class BooksController < ApplicationController
	require 'csv'
	def index

	end

	def new
		@book = Book.new
	end

	def show

	end

	def edit

	end

	def destroy

	end

	def book_import
		CSV.foreach("/src/environment/sample.csv", headers: true, encoding: 'CP932:UTF-8').each do |row|
			book = Book.new(
				ja: row[0],
				en: row[1],
				name: row[2]
			)
			if book.valid?
				book.save
			end
		end
		redirect_to root_path
	end
end
