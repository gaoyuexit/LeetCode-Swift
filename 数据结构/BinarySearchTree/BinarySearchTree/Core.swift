//
//  Core.swift
//  BinarySearchTree
//
//  Created by 宇郜 on 2019/5/16.
//  Copyright © 2019 宇郜. All rights reserved.
//

import Foundation


class Node<E> {
    var element: E
    var left: Node<E>?
    var right: Node<E>?
    var parent: Node<E>?
    
    init(_ element: E, parent: Node<E>?) {
        self.element = element
        self.parent = parent
    }
}

extension Node {
    var hasTwoChildren: Bool {
        return left != nil && right != nil
    }
    var isLeaf: Bool { //是否是叶子节点
        return left == nil && right == nil
    }
    var isLeftChild: Bool { //自己是父节点的左子树节点还是右子树节点  是否是父节点的左节点
        return parent != nil && self === parent?.left
    }
    var isRightChild: Bool { //自己是父节点的左子树节点还是右子树节点  是否是父节点的右节点
        return parent != nil && self === parent?.right
    }
}


protocol TreePrintProtocol {
    associatedtype E
    func printOfLevelTraversal() //层序遍历
    func printOfPreOrderTraversal(_ node: Node<E>?)//前序
    func printOfInOrderTraversal(_ node: Node<E>?)//中序
    func printOfPostOrderTraversal(_ node: Node<E>?)//后序
}

class Queue<E> { //队列
    private var array = [E]()
    
    func enQueue(_ element: E){
        array.append(element)
    }
    
    func outQueue()->E {
        return array.removeFirst()
    }
    var isEmpty: Bool {
        return array.isEmpty
    }
    
    var size: Int {
        return array.count
    }
    
}
