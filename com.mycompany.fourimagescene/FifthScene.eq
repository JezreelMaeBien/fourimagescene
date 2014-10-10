
public class FifthScene : SEScene
{
    
public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        SESprite image;
        SESprite text1;
        SESprite text2;
        SESprite text3;
        SESprite text4;
        add_entity(SESpriteEntity.for_color(Color.instance("blue"), get_scene_width(), get_scene_height()));
        rsc.prepare_image("image4","beach",get_scene_width(), get_scene_height());
        image = add_sprite_for_image(SEImage.for_resource("image4"));
        rsc.prepare_font("myfont","arial bold color=blue", 40);
        text1 = add_sprite_for_text("Main", "myfont");
        text1.move(0.9*get_scene_width(),0.75*get_scene_height());
        text2 = add_sprite_for_text("2nd", "myfont");
        text2.move(0.9*get_scene_width(),0.8*get_scene_height());
        text3 = add_sprite_for_text("3rd", "myfont");
        text3.move(0.9*get_scene_width(),0.85*get_scene_height());
        text4 = add_sprite_for_text("4th", "myfont");
        text4.move(0.9*get_scene_width(),0.9*get_scene_height());
    }

    public void on_pointer_press(SEPointerInfo pi)
    {
        base.on_pointer_press(pi);
        if(pi.is_inside(0.9*get_scene_width(),0.75*get_scene_height(),0.99*get_scene_width(), 0.80*get_scene_height())) {
        switch_scene(new MainScene());
        }
        if(pi.is_inside(0.9*get_scene_width(),0.8*get_scene_height(),0.99*get_scene_width(), 0.80*get_scene_height())) {
        switch_scene(new SecondScene());
        }
        if(pi.is_inside(0.9*get_scene_width(),0.85*get_scene_height(),0.99*get_scene_width(), 0.80*get_scene_height())) {
        switch_scene(new ThirdScene());
        }
        if(pi.is_inside(0.9*get_scene_width(),0.9*get_scene_height(),0.99*get_scene_width(), 0.80*get_scene_height())) {
        switch_scene(new FourthScene());
        }
    }
    public void cleanup() {
        base.cleanup();
    }

}
