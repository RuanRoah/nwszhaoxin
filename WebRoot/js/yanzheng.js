
        /*
         *
         * Created by roah on 16-7-25.
         *
         **/        
        function yzbanji(){
            if(document.getElementById("banji").value!="")
            {
                document.getElementById("yanzhengbanji").innerHTML="";
                return true;
            }
            else
                document.getElementById("yanzhengbanji").innerHTML="<font color='red'>�༶����Ϊ��</font>";
                return false;
        }
        
        function yzxuehao(){
        	var correct=/^ 16[0-1][0-9]0[0-6]1?\d[0-5]\d $/;
            var xuehao=document.getElementById("xuehao").value.match(correct); 
        	if(document.getElementById("xuehao").value!="")
            {
                document.getElementById("yanzhengxuehao").innerHTML="";
                return true;
            }
            else
                document.getElementById("yanzhengxuehao").innerHTML="<font color='red'>ѧ�Ų���Ϊ��</font>";
                
            return false;
        }
        
        function yzsex()
        {
            if(document.getElementById("sex").value!="")
            {
                document.getElementById("yanzhengsex").innerHTML="";
                return true;
            }
            else
                document.getElementById("yanzhengsex").innerHTML="<font color='red'>��ȷ���Ա��ꣿ</font>";
                return false;
        }
        
        function yzbumenmain()
        {
        if(document.getElementById("bumenmain").value!="")
            {
                document.getElementById("yanzhengbumen").innerHTML="";
                return true;
            }
            else
                document.getElementById("yanzhengbumen").innerHTML="<font color='red'>�û�������Ϊ��</font>";
                return false;
        }
        
        function nichengs()
        {
            if(document.getElementById("nicheng").value!="")
            {
                document.getElementById("yanzhengnicheng").innerHTML="";
                return true;
            }
            else
                document.getElementById("yanzhengnicheng").innerHTML="<font color='red'>��������Ϊ��</font>";
            return false;
        }
        
        function doaction()
        {
            if(yzxuehao()&&yzbanji()&&nichengs()&&yzxuehao()&&yzbumenmain())
            {
               alert("ǰ����֤ͨ��");
               return true;          
            }
            else
            return false;
        }
        
        