//
//  ViewController.swift
//  collectionView
//
//  Created by Mateus Rodrigues Santos on 03/07/19.
//  Copyright © 2019 Mateus Rodrigues Santos. All rights reserved.
//

import UIKit

/* Para implementar uma CollectionViewCell voce precisa herdar de um delegate e
 de um protocolo na view controller - UICollectionViewDataSource, UICollectionViewDelegate
 */
class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var i = 0
    //Diz a collection quantas células vai fazer
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 50
    }
    //Retorna a célula adequada para o item especificado
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //Para retornar a celúla adequada vc deve chamar o método de exibiçao de colecao: collectionView e usar o método de reutilizacao de celula
                //withReuseIdentifier: - É o identificador da célula
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath as IndexPath) as! MinhaCollectionViewCell
        
        i = i + 1
        cell.minhaLabel.text = "\(i)"
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("tocou!!! ")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

