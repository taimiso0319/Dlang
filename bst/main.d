import std.stdio;
import BST;

void main(){
    BST bst = new BST();
    writeln("Begin Binary Search Tree Tests");
    writeln("Add number of 5: ",bst.insert(5));
    writeln("Add number of 3: ",bst.insert(3));
    writeln("Add number of 2: ",bst.insert(2));
    writeln("Add number of 1: ",bst.insert(1));
    writeln("Add number of 4: ",bst.insert(4));
    writeln("Add number of 7: ",bst.insert(7));
    writeln("Add number of 8: ",bst.insert(8));
    writeln("Add number of 9: ",bst.insert(9));
    writeln("Add number of 6: ",bst.insert(6));
    writeln();
    writeln("Search number of 10: ",bst.find(10));
    writeln("Search number of 2: ",bst.find(2));
    writeln("Search number of 5: ",bst.find(5));
    writeln();
    writeln("Remove number of 5: ",bst.remove(5));
    writeln("Search number of 5: ",bst.find(5));
    writeln("Finish Binary Search Tree Tests");
}
