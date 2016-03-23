import node;

class BST{
    Node root;
    this(){
        root = null;
    }

    bool insert(int n){
        if(root is null){
            root = new Node(n);
            return true;
        }else
            return root.insert(n);
    }

    bool find(int n){
        if(root is null)
            return false;
        else
            return root.find(n);
    }

    bool remove(int n){
        if(root is null)
            return false;
        else{
            if(root.getData == n){
                Node temp = new Node(0);
                temp.setLeft(root);
                bool ret = root.remove(n, temp);
                this.root = temp.getLeft();
                return ret;
            }else
                return root.remove(n, null);
        }
    }
}
