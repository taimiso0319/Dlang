import std.stdio;
import LinkedList;

void main(){
    LinkedList ll = new LinkedList();
    writeln("Add 2 at head.");
    ll.addAtHead(2);
    ll.display();
    writeln("Add 4 at head.");
    ll.addAtHead(4);
    ll.display();
    writeln("Add 6 at tail.");
    ll.addAtTail(6);
    ll.display();
    writeln("Add 3 at tail.");
    ll.addAtTail(3);
    ll.display();
    writeln("Delete data at head.");
    ll.deleteAtHead();
    ll.display();
    writeln("Delete data at tail.");
    ll.deleteAtTail();
    ll.display();
    writeln("Add 1 at head.");
    ll.addAtHead(1);
    ll.display();
    writeln("Add 7 at tail.");
    ll.addAtTail(7);
    ll.display();
    writeln("Add 5 at index 3.");
    ll.addElementAt(3,5);
    ll.display();
    writeln("Test:");
    writeln("Size is ", ll.getSize);
    writeln("Element 5 is at index ", ll.searchIndex(5));
    writeln("Head is ", ll.getElementAt(1));
    writeln("Tail is ", ll.getElementAt(ll.getSize));
}
