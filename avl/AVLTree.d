import Node;

class AVLTree{
    public:
        Node root;
        this(int d){
            root = new Node(d);
        }
        
        void insert(){
        
        }

        int getHeight(Node node){
            if(node is null){
                return -1;
            }
            return node.height;
        }
}
