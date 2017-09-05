//

import UIKit

class ViewController: UIViewController

{

    @IBOutlet weak var anglais: UITextField!
    @IBOutlet weak var resultat: UILabel!

    let arrayAnglais = ["dog", "cat", "mouse"]
    let arrayFrancais = ["chien", "chat", "souris"]
    
    @IBAction func traduction(_ sender: UIButton)
    {
        verification(nomDuChamp: anglais)
    }

    func verification(nomDuChamp: UITextField)
    {
        let c = nomDuChamp
        if c.text != ""
        {
            faireTraduction (nomDuChamp: anglais, nomDuLabel: resultat)
            print("Test")
        }
    }

    func faireTraduction(nomDuChamp: UITextField, nomDuLabel: UILabel)
    {
        let c = nomDuChamp
        let l = nomDuLabel
            
        var found = false
            
        for index in 0..<arrayAnglais.count
        {
            if c.text == arrayAnglais[index]
            {
                l.text = arrayFrancais[index]
                found = true
                break;
            }
        }
        if !found
        {
            l.text = "Pas trouvé"
        }
    }
}
