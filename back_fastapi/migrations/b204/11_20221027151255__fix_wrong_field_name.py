from tortoise import BaseDBAsyncClient


async def upgrade(db: BaseDBAsyncClient) -> str:
    return """
        ALTER TABLE `user` RENAME COLUMN `shool_id` TO `school_id`;
        ALTER TABLE `candle` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `day` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `stock` RENAME COLUMN `minimun` TO `minimum`;
        ALTER TABLE `stock` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `stock` RENAME COLUMN `maximun` TO `maximum`;
        ALTER TABLE `dayagriculture` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `daybank` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `daychemistry` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `dayconstruction` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `daydistribution` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `dayelecgas` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `dayelectronic` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `dayfiber` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `dayfinance` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `dayfood` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `dayinsurance` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `daymanufacturing` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `daymechanic` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `daymedicalprecision` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `daymedication` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `daynonmetal` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `dayservice` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `daysteel` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `daystockindustry` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `daytelecommunication` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `daytransportdepot` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `daytransportequip` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `daywood` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candleagriculture` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candlebank` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candlechemistry` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candleconstruction` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candledistribution` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candleelecgas` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candleelectronic` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candlefiber` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candlefinance` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candlefood` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candleinsurance` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candlemanufacturing` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candlemechanic` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candlemedicalprecision` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candlemedication` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candlenonmetal` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candleservice` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candlesteel` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candlestockindustry` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candletelecommunication` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candletransportdepot` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candletransportequip` RENAME COLUMN `volumn` TO `volume`;
        ALTER TABLE `candlewood` RENAME COLUMN `volumn` TO `volume`;"""


async def downgrade(db: BaseDBAsyncClient) -> str:
    return """
        ALTER TABLE `day` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `user` RENAME COLUMN `school_id` TO `shool_id`;
        ALTER TABLE `stock` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `stock` RENAME COLUMN `minimum` TO `minimun`;
        ALTER TABLE `stock` RENAME COLUMN `maximum` TO `maximun`;
        ALTER TABLE `candle` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `daybank` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `dayfood` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `daywood` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `dayfiber` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `daysteel` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candlebank` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candlefood` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candlewood` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `dayelecgas` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `dayfinance` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `dayservice` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candlefiber` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candlesteel` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `daymechanic` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `daynonmetal` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `daychemistry` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `dayinsurance` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candleelecgas` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candlefinance` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candleservice` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `dayelectronic` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `daymedication` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candlemechanic` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candlenonmetal` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `dayagriculture` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candlechemistry` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candleinsurance` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `dayconstruction` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `daydistribution` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candleelectronic` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candlemedication` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `daymanufacturing` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `daystockindustry` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candleagriculture` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `daytransportdepot` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `daytransportequip` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candleconstruction` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candledistribution` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candlemanufacturing` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candlestockindustry` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `daymedicalprecision` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candletransportdepot` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candletransportequip` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `daytelecommunication` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candlemedicalprecision` RENAME COLUMN `volume` TO `volumn`;
        ALTER TABLE `candletelecommunication` RENAME COLUMN `volume` TO `volumn`;"""
