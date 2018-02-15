//Tema 4,5
//Crear objeto post y sus relaciones
//Completar el código visto en clase
//Subir repositorio a github
//User(imagenDeUsuario)//id -- UUID random// let post = Post(usuario, imagen, texto)
//post.incrementLike()//post.getLikes()
//post.incrementComments()//post.getComments()
//getDate -- Tema 5
//post.setLocation()//post.getLocation()
//post.setImage()//post.getImage() - Optional
//post.getContadores() -> tupla de comments y likes

//  timestamp ->
// UTC, GMT

import UIKit
var now = Date()  //MM d, YYYY 'at' hh:mm 'PM'
let Format =  "yyyy-MM-dd"
var pastDate = Date(timeIntervalSinceNow: -60*60*24*7*4*3)
//Format("mm/dd/YYYY:T:HH:MM:SS:mm.000'Z'") //- hulu format date

//0 = 1970
//
var x = ""
x = "776457687"
//x.reverse()//zº
//x.charAt(index)


extension Date {
    func getTimeAgo() -> String {
        let timeAgo = Int(Date().timeIntervalSince(self))
        if timeAgo < 60 {
            return "\(timeAgo) seconds ago"
        } else if timeAgo < 60 * 60 {
            return "\(timeAgo / 60) minutes ago"
        } else if timeAgo < 60 * 60 * 24 {
            return "\(timeAgo / 60 / 60) hours ago"
        } else if timeAgo < 60 * 60 * 24 * 7 {
            return "\(timeAgo / 60 / 60 / 24) day ago"
        } else if timeAgo < 60 * 60 * 24 * 7 * 4{
            return "\(timeAgo / 60 / 60 / 24 / 7) weeks ago"
        } else if timeAgo < 60 * 60 * 24 * 7 * 4 * 12{
            return "\(self.formatDate(formatPattern: Format)) - \(timeAgo / 60 / 60 / 24 / 7 / 4) months ago"
        }
        return "Posted on \(self.formatDate(formatPattern: Format)))"
    }
    func formatDate(formatPattern:String) -> String{
        let dateFormatter:DateFormatter = DateFormatter()
        dateFormatter.dateFormat = formatPattern
        let formattedDate:String = dateFormatter.string(from: self)
        return formattedDate
    }
}
var secondsAgo: String = pastDate.getTimeAgo()



// week
//before a month print the format yyyy/mm/dd - extra
//
class Post {
    
}
class User {
    
}

// var leo = User("Leo", "image", "")
//var post = Post(leo, "imagen", "texto"))
//post.getUser()
//post.incrComments()
//post.incrComments()
//post.getComments()