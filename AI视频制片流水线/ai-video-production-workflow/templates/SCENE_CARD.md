# SCENE_CARD

## Scene Identity
- Scene ID:
- Scene Name:
- Location Type:
- Default Time / Weather:
- Mood:
- Visual Style:

## Spatial Lock
- Layout（真实尺度：墙门窗和关键家具的尺寸与相对位置）:
- Entrance / Exit:
- Key Anchors:
- Foreground / Midground / Background:
- Camera-Safe Angles:
- Blockout Asset: `03_scenes/SCENE_<ID>/blockout/<file>.blend`（几何事实源，所有机位图和布局图由它渲出）

## Scene Asset Split（三层光照策略）
- Blockout nine-grid（几何锁：同一 .blend 渲九个安全机位，统一工作光）:
- Skinned nine-grid（蒙皮：白模做结构参考 + 风格锚做风格参考生成）:
- Mood boards（气氛锁：按下方光锁打剧情光，每个时间态一套）:
- Material / Light Detail References（质感锁）:
- Floor Plan（顶视正交渲染）:

## Time-State Variants（时间态子资产）
| State ID | Time / Weather | Light Change | Asset |
|---|---|---|---|
| SCENE_XX_day |  |  |  |
| SCENE_XX_night |  |  |  |

## Light / Material Lock
- Main Light（方向在 blockout 里放灯固定，白模渲染自带影子方向）:
- Secondary Light:
- Color Temperature:
- Surface Materials:
- Atmosphere:

## Sound Signature（声音指纹）
- Ambience（具体声音，如 空调低鸣+日光灯电流声；同一场景内不得无故改变）:
- Characteristic SFX:

## Reference Usage
1. Blockout render controls: geometry, perspective, placement, shadow direction
   Does not control: material, color, style, atmosphere
2. Geography Reference controls:
   Does not control:
3. Lighting / Mood Reference controls:
   Does not control:
4. Style Anchor controls rendering language only:
   Does not control:
5. Do Not Override:

## Continuity Notes
- Fixed Positions:
- Movable Elements:
- Forbidden Changes:
