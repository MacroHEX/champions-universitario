-- CreateEnum
CREATE TYPE "Category" AS ENUM ('FEMENINO', 'MASCULINO', 'MIXTO');

-- CreateTable
CREATE TABLE "SportsTeam" (
    "id" BIGSERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "sport" TEXT NOT NULL,
    "category" "Category" NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "SportsTeam_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Match" (
    "id" BIGSERIAL NOT NULL,
    "team1Id" BIGINT NOT NULL,
    "team2Id" BIGINT NOT NULL,
    "sport" TEXT NOT NULL,
    "match_date" TIMESTAMP(3),
    "scoreTeam1" INTEGER NOT NULL DEFAULT 0,
    "scoreTeam2" INTEGER NOT NULL DEFAULT 0,
    "winnerId" BIGINT NOT NULL,
    "stage" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Match_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Player" (
    "id" BIGSERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "position" TEXT,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "teamId" BIGINT NOT NULL,

    CONSTRAINT "Player_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "FutsalMatch" (
    "id" BIGSERIAL NOT NULL,
    "team1Id" BIGINT NOT NULL,
    "team2Id" BIGINT NOT NULL,
    "match_date" TIMESTAMP(3),
    "scoreTeam1" INTEGER NOT NULL DEFAULT 0,
    "scoreTeam2" INTEGER NOT NULL DEFAULT 0,
    "winnerId" BIGINT NOT NULL,
    "stage" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "FutsalMatch_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "VolleyballMatch" (
    "id" BIGSERIAL NOT NULL,
    "team1Id" BIGINT NOT NULL,
    "team2Id" BIGINT NOT NULL,
    "match_date" TIMESTAMP(3),
    "setsTeam1" INTEGER NOT NULL DEFAULT 0,
    "setsTeam2" INTEGER NOT NULL DEFAULT 0,
    "winnerId" BIGINT NOT NULL,
    "stage" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "VolleyballMatch_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_team1Id_fkey" FOREIGN KEY ("team1Id") REFERENCES "SportsTeam"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_team2Id_fkey" FOREIGN KEY ("team2Id") REFERENCES "SportsTeam"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Match" ADD CONSTRAINT "Match_winnerId_fkey" FOREIGN KEY ("winnerId") REFERENCES "SportsTeam"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Player" ADD CONSTRAINT "Player_teamId_fkey" FOREIGN KEY ("teamId") REFERENCES "SportsTeam"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "FutsalMatch" ADD CONSTRAINT "FutsalMatch_team1Id_fkey" FOREIGN KEY ("team1Id") REFERENCES "SportsTeam"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "FutsalMatch" ADD CONSTRAINT "FutsalMatch_team2Id_fkey" FOREIGN KEY ("team2Id") REFERENCES "SportsTeam"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "FutsalMatch" ADD CONSTRAINT "FutsalMatch_winnerId_fkey" FOREIGN KEY ("winnerId") REFERENCES "SportsTeam"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VolleyballMatch" ADD CONSTRAINT "VolleyballMatch_team1Id_fkey" FOREIGN KEY ("team1Id") REFERENCES "SportsTeam"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VolleyballMatch" ADD CONSTRAINT "VolleyballMatch_team2Id_fkey" FOREIGN KEY ("team2Id") REFERENCES "SportsTeam"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "VolleyballMatch" ADD CONSTRAINT "VolleyballMatch_winnerId_fkey" FOREIGN KEY ("winnerId") REFERENCES "SportsTeam"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
