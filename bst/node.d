class Node{
    private:
        int data;
        Node left;
        Node right;
    public:
    this(int data){
        this.data = data;
        left = null;
        right = null;
    }
    bool insert(int data){
        if(this.data == data){
            return false;
        }else if(data < this.data){
            if(left is null){
                left = new Node(data);
                return true;
            }else
                return left.insert(data);
        }else if(this.data < data){
            if(right is null){
                right = new Node(data);
                return true;
            }else
                return right.insert(data);
        }
        else return false;
    }

    bool find(int data){
        if(this.data == data){
            return true;
        }else if(data < this.data){
            if(this.left is null)
                return false;
            else return left.find(data);
        }else if(this.data < data){
            if(this.right is null)
                return false;
            else return right.find(data);
        }else return false;
    }

    bool remove(int data, Node node){
        if(data < this.data){
            if(!(left is null))
                return left.remove(data, this);
            else return false;
        }else if(this.data < data){
            if(!(right is null))
                return right.remove(data, this);
            else return false;
        }else{
            if(!(left is null) && !(right is null)){
                this.data = right.getMin;
                right.remove(this.data, this);
            }else if(node.left == this)
                node.left = !(left is null) ? left : right;
            else if(node.right == this)
                node.right = !(left is null) ? left : right;
            return true;
        }
    }

    @property
    int getData(){
        return data;
    }

    void setLeft(Node n){
        this.left = n;
    }

    Node getLeft(){
        return left;
    }

    void setRight(Node n){
        this.right = n;
    }

    Node getRight(){
        return right;
    }

    @property
    int getMax(){
        if(right is null)
            return data;
        else return right.getMax;
    }

    @property
    int getMin(){
        if(left is null)
            return data;
        else return left.getMin;
    }

}
