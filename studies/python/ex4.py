fav_movies = ["Coraline", "Cenicienta", "Blanca nieves"]
print("Current favorite movies:", fav_movies)

new_movie = input("Enter a new favorite movie: ")
fav_movies.append(new_movie)

remove_movie = input("Enter a movie to remove: ")
if remove_movie in fav_movies:
    fav_movies.remove(remove_movie)
    print("Updated favorite movies:", fav_movies)
else:
    print("Movie not found in the list. No changes made.")