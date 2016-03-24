import std.stdio;
import Node;

class LinkedList{
    Node head;
    int size;
    this(){
        head = null;
        size = 0;
    }

    //Add a note the beginning of the linked list.
    void addAtHead(int data){
        Node temp = new Node(data);
        temp.next = head;
        head = temp;
        size++;
    }

    void addAtTail(int data){
        if(head is null) addAtHead(data);
        else{
            Node insNode = new Node(data);
            Node curNode = head;
            while(!(curNode.next is null)){
                curNode = curNode.next;
            }
            curNode.next = insNode;
            size++;
        }
    }

    int deleteAtHead(){
        int retData = head.data;
        head = head.next;
        size--;
        return retData;
    }

    int deleteAtTail(){
        int retData = head.data;
        if(head is null) head = null;
        else{
            Node curNode = head;
            while(!(curNode.next.next is null)){
                curNode = curNode.next;
            }
            retData = curNode.next.data;
            curNode.next = null;
            size--;
        }
        return retData;
    }

    int getElementAt(int index){
        if(size < index) return -1;
        Node tempHead = head;
        while(index-1 != 0){
            tempHead = tempHead.next;
            index--;
        }
        return tempHead.data;
    }

    int searchIndex(int data){
        Node tempHead = head;
        int count = 1;
        while(!(tempHead is null)){
            if(tempHead.data == data){
                return count;
            }else{
                tempHead = tempHead.next;
                count++;
            }
        }
        return -1;
    }

    void addElementAt(int index, int data){
        if(index < 1 || size + 1 < index) return;
        else if(index == size + 1) addAtTail(data);
        else if(index == 1) addAtHead(data);
        else{
            Node tempNode = new Node(data);
            Node curNode = head;
            while((index - 2) > 0){
                curNode = curNode.next;
                index--;
            }
            tempNode.next = curNode.next;
            curNode.next = tempNode;
            size++;
        }

    }

    @property
    int getSize(){
        return size;
    }

    void display(){
        Node curNode = head;
        while(!(curNode is null) ){
            write(curNode.data, "->");
            curNode = curNode.next;
        }
        write("null");
        writeln();
        writeln();
    }
}
