void setup()
{
	Farm a = new Farm();
	a.animalSounds();
}
class Farm 
{     
  private Animal[] aBunchOfAnimals = new Animal[3];    
  public Farm()    
  {       
   aBunchOfAnimals[0] = new NamedCow("cow","moo","Elsie");          
   aBunchOfAnimals[1] = new Chick("chick","cheep","cluck");
   aBunchOfAnimals[2] = new Pig("pig","oink");    
  }     
  public void animalSounds()    
  {
    for (int nI=0; nI < aBunchOfAnimals.length; nI++) 
    {             
       System.out.println( aBunchOfAnimals[nI].getType() + " goes " + aBunchOfAnimals[nI].getSound() );       
    }       
    System.out.println( "The cow is known as " + ((NamedCow)aBunchOfAnimals[0]).getName() );    
  } 
}
interface Animal 
{    
	public String getSound();        
	public String getType(); 
}
class Cow implements Animal 
{     
	protected String myType;     
	protected String mySound;      
	public Cow(String type, String sound)    
	{         
		myType = type;         
 		mySound = sound;     
 	}     
	public Cow()    
	{         
    	myType = "unknown";         
    	mySound = "unknown";     
 	}      
	public String getSound()
	{
		return mySound;
	}     
	public String getType()
	{
		return myType;
	} 
}
class Chick implements Animal
{
	private String myType;
	private String mySound;
	public Chick(String type, String soundOne, String soundTwo)
	{
		myType = type;
		if(Math.random()*1>0.5)
		{
			mySound=soundOne;
		}
		else 
		{
			mySound=soundTwo;	
		}
	}
	public String getSound()
	{
		return mySound;
	}
	public String getType()
	{
		return myType;
	}
}
class Pig implements Animal
{
	private String myType;     
	private String mySound;      
	public Pig(String type, String sound)    
	{         
		myType = type;         
 		mySound = sound;     
 	}     
	public Pig()    
	{         
    	myType = "unknown";         
    	mySound = "unknown";     
 	}      
	public String getSound()
	{
		return mySound;
	}     
	public String getType()
	{
		return myType;
	} 
}
class NamedCow extends Cow
{
	String myName;
	public NamedCow(String type,String sound, String name)
	{
		myType = type;
		mySound=sound;
		myName= name;
	}
	public String getName()
	{
		return myName;
	}
}
