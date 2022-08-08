class Movie < ActiveRecord::Base

    def self.create_with_title(title)
        movie = Movie.create(:title => title)
          
    end
    def self.first_movie
        Movie.first
    end
    def self.last_movie
        Movie.last
    end
    def self.movie_count
        Movie.count
    end
    def self.find_movie_with_id(id)
        Movie.find(id)
    end
    def self.find_movie_with_attributes(cat)
        Movie.find_by(cat)
        
    end
    def self.find_movies_after_2002
     movie = Movie.where('release_date > 2002')
    end
    def update_with_attributes(cat)
    self.update(cat)
    end
    def self.update_all_titles(cat)
        Movie.update_all(title: cat)
    end

    def self.delete_by_id(id)
        Movie.destroy(id)
    end
    def self.delete_all_movies
     Movie.destroy_all
    end






end