//
//  ViewController.swift
//  PhotoApp
//
//  Created by Alex Pelletier on 12/1/15.
//  Copyright © 2015 Alex Pelletier. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource,UINavigationControllerDelegate, UIImagePickerControllerDelegate{

    @IBOutlet var collectionView: UICollectionView!
    
    var photos = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func plusButtonPressed(sender: AnyObject) {
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.allowsEditing = false

        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera){
            pickerController.sourceType = UIImagePickerControllerSourceType.Camera
        }else if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary){
            pickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        }else{
            let alert = UIAlertController(title: "Error", message: "No Supported Picker Type", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
        }
        
        self.presentViewController(pickerController, animated: true, completion: nil)
    }
    
    //MARK: UIImagePickerControllerDelegate
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        photos.append(image)
        collectionView.reloadData()
        
        picker.dismissViewControllerAnimated(true, completion: nil)
    }
    
    //MARK: CollectionViewDataSource
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("photoCell", forIndexPath: indexPath)
        cell.backgroundView = UIImageView(image: photos[indexPath.row])
        return cell
    }

}

