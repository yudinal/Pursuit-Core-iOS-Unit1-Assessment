//
//  FaceCard.swift
//  BlackJack
//
//  Created by Lilia Yudina on 10/24/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

enum FaceCard: String {
   case jack = "🎃"
    case queen = "👸"
    case king = "🤴"
}
extension FaceCard: CaseIterable { }
