//
//  LeagueVC.swift
//  App-Swoosh
//
//  Created by Ramit sharma on 03/10/17.
//  Copyright © 2017 Ramit sharma. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var nextBtnOtl: BorderButton!
    
    var player: Player!

    
    override func viewDidLoad() {
        super.viewDidLoad()


        player = Player()
        
        
        
    }
    @IBAction func unwindFromSkillVC(unwindSegue: UIStoryboard) {
        
    
    }

    @IBAction func coedTapped(_ sender: Any) {
        
        selectLeagueType(leagueTypes: "coed")

    }
    @IBAction func womensTapped(_ sender: Any) {
        
       selectLeagueType(leagueTypes: "womens")

    }
    @IBAction func mensTapped(_ sender: Any) {
        
        selectLeagueType(leagueTypes: "mens")
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
       
        performSegue(withIdentifier: "s2", sender: self)
    }
    
    
    func selectLeagueType(leagueTypes: String) {
        
        player.desiredLeague = leagueTypes
        nextBtnOtl.isEnabled = true
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            
            skillVC.player = player
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
