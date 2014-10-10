/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
    SESprite image1;
    SESprite image2;
    SESprite image3;
    SESprite image4;
    SESprite text;
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        add_sprite_for_color(Color.instance("blue"),get_scene_width(),get_scene_height());
        
        rsc.prepare_image("image1","flowers",0.5*get_scene_width(), 0.5*get_scene_height());
        image1 = add_sprite_for_image(SEImage.for_resource("image1"));
        image1.move(0,0);
        
        rsc.prepare_image("image2","bench",get_scene_width()*0.5, get_scene_height()*0.5);
        image2 = add_sprite_for_image(SEImage.for_resource("image2"));
        image2.move(get_scene_width()*0.5,0);
        
        rsc.prepare_image("image3","forest",get_scene_width()*0.5, get_scene_height()*0.5);
        image3 = add_sprite_for_image(SEImage.for_resource("image3"));
        image3.move(0, get_scene_height()*0.5);
        
        rsc.prepare_image("image4","beach",get_scene_width()*0.5, get_scene_height()*0.5);
        image4 = add_sprite_for_image(SEImage.for_resource("image4"));
        image4.move(get_scene_width()*0.5, get_scene_height()*0.5);

        rsc.prepare_font("myfont","arial bold color=#000043", 40);
    }

 public void on_pointer_press(SEPointerInfo pi) {
       base.on_pointer_press(pi);
        if(pi.is_inside(0,0,0.5*get_scene_width(), 0.5*get_scene_height()))
        {
            switch_scene(new SecondScene());    
        }
    
        else if(pi.is_inside(get_scene_width()*0.5,0,0.5*get_scene_width(), 0.5*get_scene_height()))
        {
            switch_scene(new ThirdScene());    
        }

        else if(pi.is_inside(0,0.5*get_scene_height(),0.5*get_scene_width(), 0.5*get_scene_height()))
        {
            switch_scene(new FourthScene());    
        }

        else if(pi.is_inside(get_scene_width()*0.5,get_scene_height()*0.5,0.5*get_scene_width(), 0.5*get_scene_height()))
        {
            switch_scene(new FifthScene());    
        }
    }
}
